import 'package:flutter/material.dart';
import 'package:insta_clone/domain/post_model.dart';

/// タイムラインに表示する投稿Item
class PostItem extends StatelessWidget {
  PostItem(this.model);
  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1.0,
            blurRadius: 10.0,
            offset: Offset(10, 10),
          ),
        ],
      ),
      margin:EdgeInsets.all(8.0),
      child: Card(
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Icon(Icons.chat_bubble_outline),
                        Icon(Icons.add_circle_outline),
                      ],
                    ),
                  ),
                  Icon(Icons.bookmark_border_outlined),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text('いいね！：'),
                  Text(model.like.toString()),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(model.userName, textAlign: TextAlign.right),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(model.postText != null ? model.postText : '...', textAlign: TextAlign.right),
            ),
          ],
        )
      ),
    );
  }
}