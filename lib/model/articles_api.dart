import 'package:flutter_newsapi1/model/source_api.dart';

class ArticlesAPI {
  SourceAPI source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  ArticlesAPI(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory ArticlesAPI.articles(Map<String, dynamic> object) {
    return ArticlesAPI(
        source: SourceAPI.source(object['source']),
        author: object['author'],
        title: object['title'],
        description: object['description'],
        url: object['url'],
        urlToImage: object['urlToImage'],
        publishedAt: object['publishedAt'],
        content: object['content']);
  }
}
