import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.https(
        'https://newsapi.org/v2/everything?q=tesla&from=2021-08-08&sortBy=publishedAt&apiKey=6767a5df034a4f4f8b669633fc2916f1',
        '/books/v1/volumes',
        {'q': '{http}'});

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    //verificando se os dados estão nulos antes da exibição
    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['context'],
            publishedAt: element['publishedAt'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
