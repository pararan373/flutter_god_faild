import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_status_provider.g.dart';

@riverpod
class PlayerStatusNotifier extends _$PlayerStatusNotifier {
  @override
  Map<String, int> build() {
    return {
      'hp': 40,
      'mp': 10,
      'money': 20
    };
  }
}
