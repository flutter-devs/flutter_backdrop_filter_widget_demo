import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_backdrop_filter_widget/home_page_screen.dart';
import 'package:flutter_backdrop_filter_widget/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Splash(),
    );
  }
}



