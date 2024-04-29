import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed 
class Detail with _$Detail {
  const factory Detail({
      required int id,
      required String name,
      required String type,
      required int value,
      required int money,
      required int rarity,
      required String picture,

  }) = _Detail;
  factory Detail.fromJson(Map<String, dynamic>json) => _$DetailFromJson(json);
}