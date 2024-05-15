import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/status_crud.dart';
import 'package:flutter_application_1/view/battle.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/card/weapon/weapon.dart';
import 'view/start.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebase_options.dart';
import 'god_faild/action/draw_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'god_faild/god_faild.dart';

void main() async {
  //　一旦おまじないとしてスルーしてもらって大丈夫です
  WidgetsFlutterBinding.ensureInitialized();
  //これによってFlutterプロジェクトを起動する

  //FireBase用の処理

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
  json_test();
  firestoretest();
  genre_shuffle();
  card_selection();

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

void json_test() async {
  //stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();
  //Json <--- Stub
  final json = await rootBundle.loadString('stub/card.json');
  //JsonMap <--- Json
  final map = jsonDecode(json);
  //data <--- JsonMap
  final data = Item.fromJson(map).Hachet.value;
  //debug
  debugPrint('$data');
}

void firestoretest() async {
  final service = FirestoreService();
  service.create();
  service.read();
  service.update();
  //service.delete();
}

