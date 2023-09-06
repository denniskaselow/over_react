// Disable null-safety in the plugin entrypoint until all dependencies are null-safe,
// otherwise tests won't be able to run. See: https://github.com/dart-lang/test#compiler-flags
// @dart=2.9
import 'dart:async';

import 'package:meta/meta.dart';
import 'package:over_react_analyzer_plugin/src/diagnostic/forward_only_dom_props_to_dom_builders.dart';
import 'package:test/test.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../test_bases/diagnostic_test_base.dart';

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(ForwardOnlyDomPropsToDomBuildersDiagnosticTest);
  });
}

@reflectiveTest
class ForwardOnlyDomPropsToDomBuildersDiagnosticTest extends DiagnosticTestBase {
  @override
  get errorUnderTest => ForwardOnlyDomPropsToDomBuildersDiagnostic.code;

  @override
  get fixKindUnderTest => ForwardOnlyDomPropsToDomBuildersDiagnostic.fixKind;

  String usageSourceWithinClassComponent({@required bool fixed}) => '''
import 'package:over_react/over_react.dart';

part 'test.over_react.g.dart';

UiFactory<DomWrapperProps> DomWrapper = castUiFactory(_\$DomWrapper); // ignore: undefined_identifier

mixin DomWrapperProps on UiProps {}

class DomWrapperComponent extends UiComponent2<DomWrapperProps> {
  @override
  render() {
    return (Dom.div()
      ..modifyProps(${fixed ? 'addUnconsumedDomProps' : 'addUnconsumedProps'})
      ..id = 'foo'
    )();
  }
}
''';

  String usageSourceWithinFnComponent({@required bool fixed}) => '''
import 'package:over_react/over_react.dart';

final DomWrapperFn = uiFunction<UiProps>(
  (props) {
    return (Dom.div()
      ..${fixed ? 'addUnconsumedDomProps' : 'addUnconsumedProps'}(props, const [])
      ..id = 'foo'
    )();
  },
  UiFactoryConfig(displayName: 'DomWrapperFn'),
);
''';

  Future<void> test_classComponentUsageErrorAndFix() async {
    var source = newSource(null, usageSourceWithinClassComponent(fixed: false));
    final errorFix = await expectSingleErrorFix(createSelection(source, "..modifyProps(#addUnconsumedProps#)"));
    expect(errorFix.fixes.single.change.selection, isNull);
    source = applyErrorFixes(errorFix, source);
    expect(source.contents.data, usageSourceWithinClassComponent(fixed: true));
  }

  Future<void> test_fnComponentUsageErrorAndFix() async {
    var source = newSource(null, usageSourceWithinFnComponent(fixed: false));
    final errorFix = await expectSingleErrorFix(createSelection(source, "..#addUnconsumedProps#(props, const [])"));
    expect(errorFix.fixes.single.change.selection, isNull);
    source = applyErrorFixes(errorFix, source);
    expect(source.contents.data, usageSourceWithinFnComponent(fixed: true));
  }
}
