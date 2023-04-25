import 'package:flutter/material.dart';
import 'package:jp_loft_task/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JpLoft Task',
      home: HomePage(),
    );
  }
}
