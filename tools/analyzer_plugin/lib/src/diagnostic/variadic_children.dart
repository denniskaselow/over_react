// Adapted from dart_medic `misc` branch containing over_react diagnostics

import 'package:analyzer/dart/ast/ast.dart';
import 'package:over_react_analyzer_plugin/src/diagnostic_contributor.dart';
import 'package:over_react_analyzer_plugin/src/fluent_interface_util/cascade_read.dart';
import 'package:over_react_analyzer_plugin/src/util/ast_util.dart';

class VariadicChildrenDiagnostic extends ComponentUsageDiagnosticContributor {
  static const code = DiagnosticCode(
    'over_react_variadic_children',
    'Variadic children should be used instead of lists where possible',
    AnalysisErrorSeverity.INFO,
    AnalysisErrorType.LINT,
  );

  static final fixKind = convertUsageListLiteralToVariadicChildrenFixKind(code);

  @override
  computeErrorsForUsage(result, collector, usage) async {
    final arguments = usage.node.argumentList.arguments;
    if (arguments.length == 1 && arguments.single is ListLiteral) {
      final list = arguments.single as ListLiteral;

      await collector.addErrorWithFix(
        code,
        result.locationFor(list),
        fixKind: fixKind,
        computeFix: () => buildFileEdit(result, (builder) {
          convertUsageListLiteralToVariadicChildren(builder, list);
        }),
      );
    }
  }
}

FixKind convertUsageListLiteralToVariadicChildrenFixKind(
  DiagnosticCode code, {
  int priority = 200,
  String message = 'Unwrap children from unnecessary list literal',
}) =>
    FixKind(code.name, priority, message);

/// Removes the left/right bracket from the provided [listLiteral], and removes the value of `props.key` from
/// any child elements that have one set if [removeKeyFromChildren] is true.
///
/// Should only be used if the [listLiteral] is an argument within a [FluentComponentUsage]'s node invocation.
///
/// Can be shared in [convertUsageListLiteralToVariadicChildrenFixKind] quick fixes for lints
/// involving the keying of children / use of list literals as element children.
void convertUsageListLiteralToVariadicChildren(
  DartFileEditBuilder builder,
  ListLiteral listLiteral, {
  bool removeKeyFromChildren = true,
}) {
  builder.addDeletion(range.token(listLiteral.leftBracket));
  builder.addDeletion(range.token(listLiteral.rightBracket));

  if (!removeKeyFromChildren) return;

  for (final node in allDescendants(listLiteral)) {
    final usages = <FluentComponentUsage>[];
    node.accept(ComponentUsageVisitor(usages.add));
    for (final usage in usages) {
      for (final prop in usage.cascadedProps) {
        if (prop.name.name == 'key') {
          builder.addDeletion(prop.rangeForRemoval);
        }
      }
    }
  }
}
