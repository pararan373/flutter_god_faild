import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/battle.dart';
import 'page/start.dart';
import 'package:go_router/go_router.dart';

void main() {
  //　一旦おまじないとしてスルーしてもらって大丈夫です
  WidgetsFlutterBinding.ensureInitialized();
  //これによってFlutterプロジェクトを起動する
  runApp(const MyApp());
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
