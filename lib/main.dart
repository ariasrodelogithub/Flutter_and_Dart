import 'package:ejercicios_con_vanessa/views/connt_screem.dart';
import 'package:ejercicios_con_vanessa/views/count.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorScreen(),
    );
  }
}
