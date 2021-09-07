import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kCorSecundaria,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                text: 'News',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'App',
                style:
                    TextStyle(color: kCorPrimaria, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' P2',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: kCorSecundaria,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset("assets/images/cozinha.png"),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: kCorSecundaria,
                ),
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Teste Noticia",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              child: SingleChildScrollView(
                                child: Text(
                                    "xgfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: kCorPrimaria),
            label: 'Inicio',
            backgroundColor: kCorSecundaria,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: kCorPrimaria),
            label: 'Favoritos',
            backgroundColor: kCorPrimaria,
          ),
        ],
      ),
    );
  }
}
