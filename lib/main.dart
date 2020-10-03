import 'package:flutter/material.dart';
import 'package:insta_clone/pages/time_line.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TimeLine(title: 'Flutter Demo Home Page'),
    );
  }
}