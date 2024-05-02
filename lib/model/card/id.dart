
import 'package:freezed_annotation/freezed_annotation.dart';
part 'id.freezed.dart';
part 'id.g.dart';

@freezed
class Id with _$Id {
  const factory Id({

    required int id,
    required String name,
    required String type,
    required int value,
    required int money,
    required int rarity

  }) = _Id;
  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}