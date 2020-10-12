import 'package:flutter/material.dart';
import 'package:insta_clone/pages/time_line.dart';
import 'package:insta_clone/pages/neumorphic_app.dart';
import 'package:insta_clone/pages/profile.dart';
import 'package:insta_clone/pages/search_page.dart';
import 'package:insta_clone/pages/activity_page.dart';
import 'package:insta_clone/enum/root_enum.dart';
import 'package:insta_clone/pages/comment_page.dart';
import 'package:insta_clone/blocs/bloc_provider.dart';

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
        RootEnum.HOME.root: (context) => BlocProvider(child: TimeLine(title: 'time line')),
        RootEnum.PROFILE.root: (context) => Profile(),
        RootEnum.SEARCH.root: (context) => SearchPage(),
        RootEnum.ACTIVITY.root: (context) => ActivityPage(),
        '/neumorphic': (context) => NeumorphicApp(),
        RootEnum.COMMENT.root: (context) => CommentPage(),
      },
    );
  }
}