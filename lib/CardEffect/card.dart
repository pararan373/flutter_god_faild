import 'package:flutter_application_1/CardEffect/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required Id Hachet,
    required Id GoastSode,
  }) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}