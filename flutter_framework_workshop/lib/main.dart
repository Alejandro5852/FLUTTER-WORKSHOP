import 'package:flutter/material.dart';

import 'home/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerColor: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey[900],
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          headline6: const TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
          ),
          bodyText2: const TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MainPage(),
    );
  }
}
