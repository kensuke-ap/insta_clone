import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  CommentPage({Key key, this.model}) : super(key: key);
  final PostModel model;

  @override
  _CommentPageState createState() => _CommentPageState(model: model);
}

class _CommentPageState extends State {
  _CommentPageState({this.model});
  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('コメント'),

      ),
      body: _postItem(),
      bottomNavigationBar: Footer(),
    );
  }

  Widget _postItem() {
    return ListTile(
              leading: CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(model.userIcon),
              ),
              title: Row(
                children: <Widget>[
                  Text(model.userName),
                  SizedBox(
                    width: 16.0,
                  ),
                ],
              ),
            );
  }
}