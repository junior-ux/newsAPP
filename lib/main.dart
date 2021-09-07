import 'package:flutter/material.dart';
//import 'package:news_app/views/article.dart';
import 'package:news_app/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
