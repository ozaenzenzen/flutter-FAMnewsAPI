import 'package:flutter_newsapi1/model/articles_api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ConnectAPI {
  final url =
      "https://newsapi.org/v2/top-headlines?country=id&apiKey=e506a787488e44afae88c72d9948f5ce";

  Future<List<ArticlesAPI>> getArtcile() async {
    var res = await http.get(url);
    if (res.statusCode == 200) {
      Map<String, dynamic> jsonObject = json.decode(res.body);
      
      List<dynamic> body = jsonObject['articles'];

      List<dynamic> articles = body.map((dynamic item) => ArticlesAPI.articles(item)).toList();

      return articles;
    } else {
      throw ("Data tidak ditemukan");
    }
  }
}
