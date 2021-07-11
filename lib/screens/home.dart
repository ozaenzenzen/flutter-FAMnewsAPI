import 'package:flutter/material.dart';
import 'package:flutter_newsapi1/model/articles_api.dart';
import 'package:flutter_newsapi1/services/connect_api.dart';
import 'package:flutter_newsapi1/widget/newsUI.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ConnectAPI connectAPI = ConnectAPI();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: new Text(
          "FAM Flutter API - Berita Indonesia",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      body: new FutureBuilder(
        future: connectAPI.getArtcile(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ArticlesAPI>> snapshot) {
          if (snapshot.hasData) {
            List<ArticlesAPI> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return newsUI(articles[index], context);
              },
            );
          }
          return new Center(
            child: new CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
