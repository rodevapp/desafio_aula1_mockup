import 'package:desafio_aula1_mockup/login_page.dart';
import 'package:desafio_aula1_mockup/tinder_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage(),
        '/tinder': (BuildContext context) => const TinderPage(),
      },
      title: 'Desafio aula 1 mockup',
      theme: ThemeData(
        splashColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
