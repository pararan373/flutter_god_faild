import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/page/Detail.dart';
import 'package:flutter_application_1/page/battle.dart';
import 'page/start.dart';
import 'package:go_router/go_router.dart';

void main() {
  
  //　一旦おまじないとしてスルーしてもらって大丈夫です
  WidgetsFlutterBinding.ensureInitialized();
  //これによってFlutterプロジェクトを起動する
  runApp(const MyApp());
  test2();

}

final router = GoRouter(
  initialLocation: '/start',

  routes: [
    GoRoute(
      path: '/start',
      builder: (context, state) => Start(),
    ),
    GoRoute(
      path: '/buttle',
      builder: (context, state) => battle(),
    ),
  ],
);    

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}

 Future<void> test2() async{
    //jsonを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();
  //jsonからとりだす
  final json = await rootBundle.loadString('json/detail.json');
  //jsonmap <== json
  final map = jsonDecode(json);
  //data <== jsonmap
  final data = Detail.fromJson(map);
  //中身確認
  debugPrint('$data');
 }
