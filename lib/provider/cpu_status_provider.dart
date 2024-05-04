import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cpu_status_provider.g.dart';

@riverpod
class CpuStatusNotifier extends _$CpuStatusNotifier {
  @override
  Map<String, int> build () {
    return {
      'hp': 40,
      'mp': 10,
      'money': 20
    };
  }
}
