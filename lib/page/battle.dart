import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header_button.dart';

class Battle extends StatelessWidget {
  const Battle({super.key});

  @override
  Widget build(BuildContext context) {
    //画面上部に表示するバー
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 34, 93, 67),
      title: const Text("修行", style: TextStyle(color: Colors.white)),
      actions: [
        // ヘッダーボタンをここで追加
        HeaderButton(
          onPressed: () {
            // ボタンが押されたときの処理
            debugPrint("battleにて教典が押されました");
          },
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
    );
  }
}
