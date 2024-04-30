import 'package:flutter/material.dart';

class Buttle extends StatelessWidget {
  const Buttle({super.key});

  @override
  Widget build(BuildContext context) {
    //画面上部に表示するバー
    final appBar = AppBar(
      backgroundColor: Color.fromARGB(255, 34, 93, 67),
      title: const Text("修行", style: TextStyle(color: Colors.white)),
    );
    return Scaffold(
      appBar: appBar,
    );
  }
}