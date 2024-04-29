// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hachet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hachet _$HachetFromJson(Map<String, dynamic> json) {
  return _Hachet.fromJson(json);
}

/// @nodoc
mixin _$Hachet {
  Detail get Hachet => throw _privateConstructorUsedError;
  int get Michet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HachetCopyWith<Hachet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HachetCopyWith<$Res> {
  factory $HachetCopyWith(Hachet value, $Res Function(Hachet) then) =
      _$HachetCopyWithImpl<$Res, Hachet>;
  @useResult
  $Res call({Detail Hachet, int Michet});
}

/// @nodoc
class _$HachetCopyWithImpl<$Res, $Val extends Hachet>
    implements $HachetCopyWith<$Res> {
  _$HachetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Hachet = freezed,
    Object? Michet = null,
  }) {
    return _then(_value.copyWith(
      Hachet: freezed == Hachet
          ? _value.Hachet
          : Hachet // ignore: cast_nullable_to_non_nullable
              as Detail,
      Michet: null == Michet
          ? _value.Michet
          : Michet // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HachetImplCopyWith<$Res> implements $HachetCopyWith<$Res> {
  factory _$$HachetImplCopyWith(
          _$HachetImpl value, $Res Function(_$HachetImpl) then) =
      __$$HachetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Detail Hachet, int Michet});
}

/// @nodoc
class __$$HachetImplCopyWithImpl<$Res>
    extends _$HachetCopyWithImpl<$Res, _$HachetImpl>
    implements _$$HachetImplCopyWith<$Res> {
  __$$HachetImplCopyWithImpl(
      _$HachetImpl _value, $Res Function(_$HachetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Hachet = freezed,
    Object? Michet = null,
  }) {
    return _then(_$HachetImpl(
      Hachet: freezed == Hachet
          ? _value.Hachet
          : Hachet // ignore: cast_nullable_to_non_nullable
              as Detail,
      Michet: null == Michet
          ? _value.Michet
          : Michet // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HachetImpl implements _Hachet {
  const _$HachetImpl({this.Hachet, required this.Michet});

  factory _$HachetImpl.fromJson(Map<String, dynamic> json) =>
      _$$HachetImplFromJson(json);

  @override
  final Detail Hachet;
  @override
  final int Michet;

  @override
  String toString() {
    return 'Hachet(Hachet: $Hachet, Michet: $Michet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HachetImpl &&
            const DeepCollectionEquality().equals(other.Hachet, Hachet) &&
            (identical(other.Michet, Michet) || other.Michet == Michet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(Hachet), Michet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HachetImplCopyWith<_$HachetImpl> get copyWith =>
      __$$HachetImplCopyWithImpl<_$HachetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HachetImplToJson(
      this,
    );
  }
}

abstract class _Hachet implements Hachet {
  const factory _Hachet({final Detail Hachet, required final int Michet}) =
      _$HachetImpl;

  factory _Hachet.fromJson(Map<String, dynamic> json) = _$HachetImpl.fromJson;

  @override
  Detail get Hachet;
  @override
  int get Michet;
  @override
  @JsonKey(ignore: true)
  _$$HachetImplCopyWith<_$HachetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
