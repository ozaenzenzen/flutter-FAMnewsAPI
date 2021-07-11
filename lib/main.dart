import 'package:flutter/material.dart';
import 'package:flutter_newsapi1/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FAM Flutter API  - Berita Indonesia",
      home: new HomePage(),
    );
  }
}
