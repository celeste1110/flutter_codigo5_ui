import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/pages/login1_page.dart';
import 'package:flutter_codigo5_ui/pages/login2_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      debugShowCheckedModeBanner: false,
      home: Login2Page(),
    );
  }
}

