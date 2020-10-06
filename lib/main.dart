import 'package:flutter/material.dart';
import 'package:insta_clone/pages/time_line.dart';
import 'package:insta_clone/pages/neumorphic_app.dart';

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
        primaryColor: Colors.black,
      ),
//      home: new TimeLine(title: 'time line'),
        home: new NeumorphicApp(),
//        home: new MySmartHome(),
    );
  }
}