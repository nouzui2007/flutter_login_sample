import 'package:flutter/material.dart';
import 'package:login/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(title: 'Login Sample Page'),
    );
  }
}

