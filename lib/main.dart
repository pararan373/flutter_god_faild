import 'package:flutter/material.dart';
import 'page/start.dart';
void main() {
  //　一旦おまじないとしてスルーしてもらって大丈夫です
  WidgetsFlutterBinding.ensureInitialized();
  //これによってFlutterプロジェクトを起動する
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //デバックのバーを削除
      debugShowCheckedModeBanner: false,
      title: 'Noveler',
      theme: ThemeData(
        //テーマカラー : 青
        primarySwatch: Colors.blue,
      ),
      // 初期画面に表示するページの指定
      home: (Start()),
    );
  }
}
