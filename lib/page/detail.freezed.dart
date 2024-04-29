// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  int get money => throw _privateConstructorUsedError;
  int get rarity => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      int value,
      int money,
      int rarity,
      String picture});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? money = null,
    Object? rarity = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      int value,
      int money,
      int rarity,
      String picture});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? value = null,
    Object? money = null,
    Object? rarity = null,
    Object? picture = null,
  }) {
    return _then(_$DetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl with DiagnosticableTreeMixin implements _Detail {
  const _$DetailImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.value,
      required this.money,
      required this.rarity,
      required this.picture});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final int value;
  @override
  final int money;
  @override
  final int rarity;
  @override
  final String picture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Detail(id: $id, name: $name, type: $type, value: $value, money: $money, rarity: $rarity, picture: $picture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Detail'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('money', money))
      ..add(DiagnosticsProperty('rarity', rarity))
      ..add(DiagnosticsProperty('picture', picture));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, value, money, rarity, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {required final int id,
      required final String name,
      required final String type,
      required final int value,
      required final int money,
      required final int rarity,
      required final String picture}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  int get value;
  @override
  int get money;
  @override
  int get rarity;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
