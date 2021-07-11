import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_newsapi1/model/articles_api.dart';
import 'package:flutter_newsapi1/screens/newsUI_details.dart';

Widget newsUI(ArticlesAPI articlesAPI, BuildContext context) {
  return new InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return NewsUIDetails(articlesAPI: articlesAPI);
        }),
      );
    },
    child: Container(
      margin: new EdgeInsets.all(12.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(12.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
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
            height: 8.0,
          ),
          new Text(
            articlesAPI.title,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    ),
  );
}
