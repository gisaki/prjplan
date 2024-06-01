// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MySampleState {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MySampleStateCopyWith<MySampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySampleStateCopyWith<$Res> {
  factory $MySampleStateCopyWith(
          MySampleState value, $Res Function(MySampleState) then) =
      _$MySampleStateCopyWithImpl<$Res, MySampleState>;
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class _$MySampleStateCopyWithImpl<$Res, $Val extends MySampleState>
    implements $MySampleStateCopyWith<$Res> {
  _$MySampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MySampleStateImplCopyWith<$Res>
    implements $MySampleStateCopyWith<$Res> {
  factory _$$MySampleStateImplCopyWith(
          _$MySampleStateImpl value, $Res Function(_$MySampleStateImpl) then) =
      __$$MySampleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$MySampleStateImplCopyWithImpl<$Res>
    extends _$MySampleStateCopyWithImpl<$Res, _$MySampleStateImpl>
    implements _$$MySampleStateImplCopyWith<$Res> {
  __$$MySampleStateImplCopyWithImpl(
      _$MySampleStateImpl _value, $Res Function(_$MySampleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$MySampleStateImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MySampleStateImpl implements _MySampleState {
  const _$MySampleStateImpl(this.name, this.age);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'MySampleState(name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySampleStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MySampleStateImplCopyWith<_$MySampleStateImpl> get copyWith =>
      __$$MySampleStateImplCopyWithImpl<_$MySampleStateImpl>(this, _$identity);
}

abstract class _MySampleState implements MySampleState {
  const factory _MySampleState(final String name, final int age) =
      _$MySampleStateImpl;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$MySampleStateImplCopyWith<_$MySampleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
