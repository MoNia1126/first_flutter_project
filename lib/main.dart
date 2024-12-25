import 'package:first_flutter_project/flutter_project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const FlutterProject(),
    );
  }
}
