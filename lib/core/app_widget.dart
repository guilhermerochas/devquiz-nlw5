import 'package:devquiz/pages/home/home_page.dart';
import 'package:devquiz/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
