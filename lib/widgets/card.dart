import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Text(
                        "Principais noticias",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/tecnologias.png",
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox.expand(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              kCorSecundaria,
                                              Colors.transparent
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              'tech',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'Cresce em 200% a venda de notebooks',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 23.0),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}