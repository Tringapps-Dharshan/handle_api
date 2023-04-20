import 'package:flutter/material.dart';
import 'package:handle_api/detail_screen.dart';
import 'package:handle_api/home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
        DetailScreen.routeName: (context) => const DetailScreen()
      },
    );
  }
}
