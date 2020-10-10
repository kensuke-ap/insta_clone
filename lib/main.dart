import 'package:flutter/material.dart';
import 'package:insta_clone/pages/time_line.dart';
import 'package:insta_clone/pages/neumorphic_app.dart';
import 'package:insta_clone/pages/profile.dart';
import 'package:insta_clone/pages/search_page.dart';
import 'package:insta_clone/pages/activity_page.dart';

void main() {
  runApp(MyApp());
//  runApp(NeumorphicApp());
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
      initialRoute: '/home',
      routes: {
        '/home': (context) => TimeLine(title: 'time line'),
//        '/exercise': (context) => BlocProvider(child: ExercisePage()),
        '/profile': (context) => Profile(),
        '/search': (context) => SearchPage(),
        '/activity': (context) => ActivityPage(),
      },
    );
  }
}