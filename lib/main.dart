import 'package:alcanceaulas/screens/AulaScreen.dart';
import 'package:alcanceaulas/screens/CursoScreen.dart';
import 'package:alcanceaulas/screens/dashboard.dart';
import 'package:alcanceaulas/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:alcanceaulas/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Colors.cyan, secondary: Colors.cyan),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
              headline1: const TextStyle(
                  fontSize: 30,
                  height: 1.4,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(17, 17, 17, 1)),
              headline4: const TextStyle(
                  fontSize: 22,
                  height: 1.4,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(17, 17, 17, 17)),
            ),
      ),
      initialRoute: '/login',
      routes: {
        AppRoutes.LOGIN: (ctx) => Login(),
        AppRoutes.DASHBOARD: (ctx) => Dashboard(),
        AppRoutes.CURSO: (ctx) => CursoScreen(),
        AppRoutes.AULA: (ctx) => AulaScreen(),
      },
    );
  }
}
