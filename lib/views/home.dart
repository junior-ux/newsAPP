import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/widgets/card.dart';
import 'package:news_app/widgets/categorias_widget.dart';
import 'package:news_app/widgets/navegation_buttom.dart';
import 'package:news_app/widgets/text_principais_noticias.dart';
import 'package:news_app/widgets/titulo_app.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CategoryModel> categorias = [];
  @override
  void initState() {
    super.initState();
    categorias = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TituloApp(),
        centerTitle: true,
        backgroundColor: kCorSecundaria,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CategoriasWidget(categorias: categorias),
            PrincipaisNoticias(),
            Cards(),
          ],
        ),
      ),
      bottomNavigationBar: Navegacao(),
    );
  }
}
