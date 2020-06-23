import 'package:over_react/over_react.dart';

part 'proptypes.over_react.g.dart';

UiFactory<FooProps> Foo = _$Foo; // ignore: undefined_identifier

mixin FooProps on UiProps {
  int prop1;
  int prop2;
}

class FooComponent extends UiComponent2<FooProps> {
  @override
  get propTypes => {
    keyForProp((p) => p.prop1): (props, info) {
      if (props.prop1 == null) {
        throw PropError.required(info.propName);
      } else if (props.prop1 > 0) {
        throw PropError.value(props.prop1, info.propName);
      }
      return null;
    },
    keyForProp((p) => p.prop2): (props, info) {
      if (props.prop2 == null) {
        throw PropError.required(info.propName);
      } else if (props.prop2 > 0) {
        throw PropError.value(props.prop1, info.propName);
      }
      return null;
    }
  };

  @override
  render() {}
}
