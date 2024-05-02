import 'package:flutter_application_1/model/card/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weapon.freezed.dart';
part 'weapon.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required Id Hachet,
    required Id GhostSword,
  }) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}