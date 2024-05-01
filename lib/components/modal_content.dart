import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header_button.dart';

class ModalContent extends StatelessWidget {
  const ModalContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color.fromARGB(255, 34, 93, 67),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  debugPrint("modalにてbackが押されました");
                  Navigator.of(context).pop(); // モーダルを閉じる
                },
              ),
              actions: [
                // ヘッダーボタンをここで追加
                ModalButton(
                  onPressed: () {
                    // ボタンが押されたときの処理
                    debugPrint("startにて教典が押されました");
                  },
                ),
              ],
            ),
            const Expanded(
              child: Center(
                child: Text(
                  '全画面モーダル',
                  style: TextStyle(
                    color: Color.fromARGB(255, 34, 93, 67),
                    decoration: TextDecoration.none,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
