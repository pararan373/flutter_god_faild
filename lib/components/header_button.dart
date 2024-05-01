import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/modal_content.dart';

class HeaderButton extends StatelessWidget {
  final VoidCallback onPressed;

  const HeaderButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (buolder) {
            return const ModalContent();
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 183, 250, 221),
      ),
      child: const Text(
        "教典",
        style: TextStyle(color: Color.fromARGB(255, 34, 93, 67)),
      ),
    );
  }
}

class ModalButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ModalButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // モーダルを閉じる
        Navigator.of(context).pop();
        // ボタンが押されたときの処理
        debugPrint("modalにて教典が押されました");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 183, 250, 221),
      ),
      child: const Text(
        "教典",
        style: TextStyle(color: Color.fromARGB(255, 34, 93, 67)),
      ),
    );
  }
}
