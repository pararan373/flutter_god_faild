import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/battle.dart';
import 'package:flutter_application_1/components/header_button.dart';
import 'package:go_router/go_router.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    alive() {
      debugPrint("生まれたよ");
      context.push('/battle');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 93, 67),
        actions: [
          // ヘッダーボタンをここで追加
          HeaderButton(
            onPressed: () {
              // ボタンが押されたときの処理
              debugPrint("startにて教典が押されました");
            },
          ),
        ],
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_pig.png'),
                fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              'assets/images/logo.png',
              width: 500,
              height: 350,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: alive,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 34, 93, 67),
                ),
                child:
                    const Text("誕生する", style: TextStyle(color: Colors.white))),
          ]),
        ),
      ),
    );
  }
}
