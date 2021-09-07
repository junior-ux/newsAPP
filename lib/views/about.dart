import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre o App",
          style: TextStyle(color: kCorPrimaria),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffCFCFCF),
      ),
    );
  }
}
