import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/battle.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/card/model/weapon/weapon.dart';
import 'view/start.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebase_options.dart';
void main() async{
  //　一旦おまじないとしてスルーしてもらって大丈夫です
  WidgetsFlutterBinding.ensureInitialized();
  //これによってFlutterプロジェクトを起動する

  //FireBse用の処理
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  test1();
}

final router = GoRouter(
  initialLocation: '/start',
  routes: [
    GoRoute(
      path: '/start',
      builder: (context, state) => const Start(),
    ),
    GoRoute(
      path: '/battle',
      builder: (context, state) => const Battle(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}

void test1() async {
  //stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();
  //Json <--- Stub
  final json = await rootBundle.loadString('stub/card.json');
  //JsonMap <--- Json
  final map = jsonDecode(json);
  //data <--- JsonMap
  final data = Item.fromJson(map);
  //debug
  debugPrint('$data');
}
