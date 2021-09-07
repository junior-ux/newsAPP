import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/widgets/card.dart';
import 'package:news_app/widgets/categories.dart';
import 'package:news_app/widgets/drawer.dart';
import 'package:news_app/widgets/navegacao.dart';
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
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.settings,
                color: kCorPrimaria,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: TituloApp(),
        centerTitle: true,
        backgroundColor: kCorSecundaria,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              child: ListView.builder(
                itemCount: categorias.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    imageUrl: categorias[index].imageUrl,
                    categoryName: categorias[index].categoryName,
                  );
                },
              ),
            ),
            Cards(),
          ],
        ),
      ),
      bottomNavigationBar: Navegacao(),
    );
  }
}
