// Copyright 2020 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:over_react/over_react.dart';

// ignore_for_file: uri_has_not_been_generated
part 'function_component.over_react.g.dart';

mixin BasicProps on UiProps {
  Ref forwardedRef;
  String basicProp;
  String basic1;
  String basic2;
  String basic3;
  String basic4;
}

// The usage of forwardRef with uiFunction components will change in: CPLAT-11722
UiFactory<BasicProps> Basic = forwardRef<BasicProps>((props, ref) {
  return (_Basic()
    ..forwardedRef = ref
    ..addProps(props))();
})(_Basic);

UiFactory<BasicProps> _Basic = uiFunction(
  (props) {
    return Fragment()(
      Dom.div()('prop id: ${props.id}'),
      Dom.div()('default prop testing: ${props.basicProp}'),
      Dom.div()('default prop testing: ${props.basic1}'),
      (Dom.div()..ref = props.forwardedRef)(
          props.basic3, 'children: ${props.children}'),
    );
  },
  $_BasicConfig, // ignore: undefined_identifier
);

final Simple = uiFunction<BasicProps>(
  (props) {
    final basicProp = props.basicProp ?? 'basicProp';
    final basic1 = props.basic1 ?? 'basic1';

    return Fragment()(
      Dom.div()('prop id: ${props.id}'),
      Dom.div()('default prop testing: $basicProp'),
      Dom.div()('default prop testing: $basic1'),
      Dom.div()(null, props.basic4, 'children: ${props.children}'),
      (Foo()..content = props.basic2)(),
    );
  },
  $SimpleConfig, // ignore: undefined_identifier
);

mixin FooProps on UiProps {
  String content;
}

final Foo = uiFunction<FooProps>(
  (props) => Dom.div()('forwarded prop: ${props.content}'),
  $FooConfig, // ignore: undefined_identifier
);

ReactElement functionComponentContent() {
  GenericFactory(props) {
    return Dom.div()('prop id: ${props.id}');
  }

  final genericFactory = uiFunction<UiProps>(
    GenericFactory,
    UiFactoryConfig(),
  );

  final basicFactory = uiFunction<BasicProps>(
    (props) {
      return Fragment()(
        Dom.div()('prop id: ${props.id}'),
        Dom.div()('prop basic1: ${props.basic1}'),
      );
    },
    UiFactoryConfig(
      propsFactory: PropsFactory.fromUiFactory(Basic),
      displayName: 'basicFactory',
    )
  );

  // Access the div element later using `divRef.current`.
  Ref divRef = createRef();

  return Fragment()(
    (genericFactory()..id = '1')(),
    (basicFactory()
      ..id = '2'
      ..basic1 = 'basic1 value')(),
    (Basic()
      ..ref = divRef
      ..id = '3'
      ..basicProp = 'basicProp')(),
    (Simple()
      ..id = '4'
      ..basic2 = 'basic2 value')(),
  );
}
