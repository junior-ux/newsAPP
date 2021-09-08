import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.https(
        'https://newsapi.org/v2/everything?q=Apple&from=2021-09-08&sortBy=popularity&apiKey=API_KEY',
        '/books/v1/volumes',
        {'q': '{http}'});

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
  }
}
