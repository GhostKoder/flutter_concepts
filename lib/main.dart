import 'package:flutter/material.dart';
import 'package:flutter_concepts/pages/login.dart';
import 'package:flutter_concepts/themes/dark_theme.dart';
import 'package:flutter_concepts/themes/light_theme.dart';

void main() {
  runApp(const FlutterConceptsApp());
}

class FlutterConceptsApp extends StatelessWidget {
  const FlutterConceptsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Concepts',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const Login(),
    );
  }
}
