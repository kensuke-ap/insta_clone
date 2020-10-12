import 'package:flutter/material.dart';
import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/pages/comment_page.dart';
import 'package:like_button/like_button.dart';

class PostItem extends StatefulWidget {
  PostItem({Key key, this.model});
  final PostModel model;
  @override
  PostItemState createState() => PostItemState(model);
}

class PostItemState extends State<PostItem> {
  PostItemState(this.model);
  final PostModel model;

  // 投稿へのfavorite
  bool favoriteFlg;

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
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
          children: <Widget>[
            _userInfo(),
            Center(
              child: Image(// Imageウィジェット
                image: NetworkImage(model.postImage),// 表示したい画像
                fit:BoxFit.fill
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        likeButton(),
                        commentButton(),
                        // Icon(Icons.chat_bubble_outline),
                        // Icon(Icons.add_circle_outline),
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
    ));
  }

  Widget _userInfo() {
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

  // favorite function
  Widget likeButton() {
    return LikeButton(
          size: 30,
          circleColor:
              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.favorite_border,
              color: isLiked ? Colors.redAccent : Colors.black,
              size: 30,
            );
          },
          // likeCount: 665,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.deepPurpleAccent : Colors.black;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        );
  }

  Widget commentButton() {
    return SizedBox(
      width: 30,
      child: IconButton(
            iconSize: 30,
            icon: Icon(Icons.chat_bubble_outline),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CommentPage(model: model);
                  },
                ),
              );
            },
          ),
    );
  }
}
