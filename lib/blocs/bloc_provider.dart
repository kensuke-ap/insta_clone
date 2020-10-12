import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:insta_clone/blocs/post_bloc.dart';

class BlocProvider extends InheritedWidget {
  const BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  PostBloc get bloc => PostBloc();

  @override
  bool updateShouldNotify(_) => true;

  static BlocProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BlocProvider>();
  }
}