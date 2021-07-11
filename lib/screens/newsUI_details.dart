import 'package:flutter/material.dart';
import 'package:flutter_newsapi1/model/articles_api.dart';

class NewsUIDetails extends StatelessWidget {
  final ArticlesAPI articlesAPI;
  NewsUIDetails({this.articlesAPI});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: new Text(
          "News Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: new Container(
        margin: new EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                articlesAPI.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 10.0),
              height: 200.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    (articlesAPI.urlToImage != null)
                        ? articlesAPI.urlToImage
                        : "https://www.thehawk.in/hawkcontent/servlet/RDESController?command=rdm.Picture&sessionId=RDWEBD9ZXBMHEVOZY44KG0ZIGGJKEI9YBQY0U&app=rdes&partner=thehawk&type=7&uid=7fqeTRRcJ4ftYOyw41rbQiUSYivnjIvrF5837497",
                  ),
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
              (articlesAPI.description != null)
                  ? articlesAPI.description
                  : "Deskripsi Null",
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
