import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class TranslatePage extends StatelessWidget {
  const TranslatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Idiomas",
          style: TextStyle(color: kCorPrimaria),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffCFCFCF),
      ),
    );
  }
}
