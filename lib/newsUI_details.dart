import 'package:flutter/material.dart';
import 'package:flutter_newsapi1/articles_api.dart';

class NewsUIDetails extends StatelessWidget {
  final ArticlesAPI articlesAPI;
  NewsUIDetails({this.articlesAPI});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(articlesAPI.title),
      ),
      body: new Container(
        margin: new EdgeInsets.symmetric(horizontal: 20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(top: 20.0),
              height: 200.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(articlesAPI.urlToImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            new SizedBox(
              height: 8.0,
            ),
            new Row(
              children: [
                new Container(
                  padding: new EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: new Text(
                    articlesAPI.source.name,
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
                new Spacer(),
                new Text("Update Pada " + articlesAPI.publishedAt),
              ],
            ),
            new SizedBox(
              height: 20.0,
            ),
            new Text(
              articlesAPI.description,
              textAlign: TextAlign.justify,
              style: new TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
