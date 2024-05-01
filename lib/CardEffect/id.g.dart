// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdImpl _$$IdImplFromJson(Map<String, dynamic> json) => _$IdImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      value: (json['value'] as num).toInt(),
      money: (json['money'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$$IdImplToJson(_$IdImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'money': instance.money,
      'rarity': instance.rarity,
    };
