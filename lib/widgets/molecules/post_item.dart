import 'package:flutter/material.dart';
import 'package:insta_clone/domain/post_model.dart';

/// タイムラインに表示する投稿Item
class PostItem extends StatelessWidget {
  PostItem(this.model);
  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
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
          ),
          Center(
            child: Image(// Imageウィジェット
              image: NetworkImage(model.postImage),// 表示したい画像
              height: 400,
              fit:BoxFit.fill
            ),
          ),
          Text(model.postText != null ? model.postText : '...'),
        ],
      )
    );
  }
}