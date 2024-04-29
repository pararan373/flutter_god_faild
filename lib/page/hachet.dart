import 'package:flutter_application_1/page/Detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hachet.freezed.dart';
part 'hachet.g.dart';


@freezed
class Hachet with _$Hachet{
  const factory Hachet({
    final  Detail Hachet,
    required int Michet,
  }) = _Hachet;
  factory Hachet.fromJson(Map<String, dynamic> json)
    =>  _$HachetFromJson(json);
}

