import 'package:flutter/material.dart';
import 'package:tesla_smart_app/modules/homescreen.dart';
import 'package:tesla_smart_app/modules/lock_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: lockScreen()
    );
  }
}

