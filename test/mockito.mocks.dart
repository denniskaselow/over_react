// Mocks generated by Mockito 5.4.2 from annotations
// in over_react/test/mockito.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:logging/src/level.dart' as _i2;
import 'package:logging/src/log_record.dart' as _i5;
import 'package:logging/src/logger.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

import 'mockito.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLevel_0 extends _i1.SmartFake implements _i2.Level {
  _FakeLevel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i3.Logger {
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
      ) as String);

  @override
  Map<String, _i3.Logger> get children => (super.noSuchMethod(
        Invocation.getter(#children),
        returnValue: <String, _i3.Logger>{},
      ) as Map<String, _i3.Logger>);

  @override
  String get fullName => (super.noSuchMethod(
        Invocation.getter(#fullName),
        returnValue: '',
      ) as String);

  @override
  _i2.Level get level => (super.noSuchMethod(
        Invocation.getter(#level),
        returnValue: _FakeLevel_0(
          this,
          Invocation.getter(#level),
        ),
      ) as _i2.Level);

  @override
  set level(_i2.Level? value) => super.noSuchMethod(
        Invocation.setter(
          #level,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Stream<_i2.Level?> get onLevelChanged => (super.noSuchMethod(
        Invocation.getter(#onLevelChanged),
        returnValue: _i4.Stream<_i2.Level?>.empty(),
      ) as _i4.Stream<_i2.Level?>);

  @override
  _i4.Stream<_i5.LogRecord> get onRecord => (super.noSuchMethod(
        Invocation.getter(#onRecord),
        returnValue: _i4.Stream<_i5.LogRecord>.empty(),
      ) as _i4.Stream<_i5.LogRecord>);

  @override
  void clearListeners() => super.noSuchMethod(
        Invocation.method(
          #clearListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool isLoggable(_i2.Level? value) => (super.noSuchMethod(
        Invocation.method(
          #isLoggable,
          [value],
        ),
        returnValue: false,
      ) as bool);

  @override
  void log(
    _i2.Level? logLevel,
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
    _i4.Zone? zone,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #log,
          [
            logLevel,
            message,
            error,
            stackTrace,
            zone,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void finest(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #finest,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void finer(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #finer,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void fine(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #fine,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void config(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void info(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #info,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void warning(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #warning,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void severe(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #severe,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void shout(
    Object? message, [
    Object? error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #shout,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Map].
///
/// See the documentation for Mockito's code generation for more information.
class MockMap<K, V> extends _i1.Mock implements Map<K, V> {
  @override
  Iterable<MapEntry<K, V>> get entries => (super.noSuchMethod(
        Invocation.getter(#entries),
        returnValue: <MapEntry<K, V>>[],
      ) as Iterable<MapEntry<K, V>>);

  @override
  Iterable<K> get keys => (super.noSuchMethod(
        Invocation.getter(#keys),
        returnValue: <K>[],
      ) as Iterable<K>);

  @override
  Iterable<V> get values => (super.noSuchMethod(
        Invocation.getter(#values),
        returnValue: <V>[],
      ) as Iterable<V>);

  @override
  int get length => (super.noSuchMethod(
        Invocation.getter(#length),
        returnValue: 0,
      ) as int);

  @override
  bool get isEmpty => (super.noSuchMethod(
        Invocation.getter(#isEmpty),
        returnValue: false,
      ) as bool);

  @override
  bool get isNotEmpty => (super.noSuchMethod(
        Invocation.getter(#isNotEmpty),
        returnValue: false,
      ) as bool);

  @override
  Map<RK, RV> cast<RK, RV>() => (super.noSuchMethod(
        Invocation.method(
          #cast,
          [],
        ),
        returnValue: <RK, RV>{},
      ) as Map<RK, RV>);

  @override
  bool containsValue(Object? value) => (super.noSuchMethod(
        Invocation.method(
          #containsValue,
          [value],
        ),
        returnValue: false,
      ) as bool);

  @override
  bool containsKey(Object? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  void operator []=(
    K? key,
    V? value,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #[]=,
          [
            key,
            value,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<K2, V2> map<K2, V2>(
          MapEntry<K2, V2> Function(
            K,
            V,
          )? convert) =>
      (super.noSuchMethod(
        Invocation.method(
          #map,
          [convert],
        ),
        returnValue: <K2, V2>{},
      ) as Map<K2, V2>);

  @override
  void addEntries(Iterable<MapEntry<K, V>>? newEntries) => super.noSuchMethod(
        Invocation.method(
          #addEntries,
          [newEntries],
        ),
        returnValueForMissingStub: null,
      );

  @override
  V update(
    K? key,
    V Function(V)? update, {
    V Function()? ifAbsent,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [
            key,
            update,
          ],
          {#ifAbsent: ifAbsent},
        ),
        returnValue: _i6.mapUpdateShim(
          key,
          update,
          ifAbsent: ifAbsent,
        ),
      ) as V);

  @override
  void updateAll(
          V Function(
            K,
            V,
          )? update) =>
      super.noSuchMethod(
        Invocation.method(
          #updateAll,
          [update],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeWhere(
          bool Function(
            K,
            V,
          )? test) =>
      super.noSuchMethod(
        Invocation.method(
          #removeWhere,
          [test],
        ),
        returnValueForMissingStub: null,
      );

  @override
  V putIfAbsent(
    K? key,
    V Function()? ifAbsent,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #putIfAbsent,
          [
            key,
            ifAbsent,
          ],
        ),
        returnValue: _i6.mapPutIfAbsentShim(
          key,
          ifAbsent,
        ),
      ) as V);

  @override
  void addAll(Map<K, V>? other) => super.noSuchMethod(
        Invocation.method(
          #addAll,
          [other],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void forEach(
          void Function(
            K,
            V,
          )? action) =>
      super.noSuchMethod(
        Invocation.method(
          #forEach,
          [action],
        ),
        returnValueForMissingStub: null,
      );
}
