import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';
import 'package:insta_clone/widgets/molecules/post_grid.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
          child: Column(
            children: [
              // フォロワーとか、アイコンとか
              _userInfo(),
              Container(child: Text('profile name', textAlign: TextAlign.left)),
              // PostList
              PostGrid(),
            ],
          ),
      ),

      bottomNavigationBar: Footer(),
    );
  }

  Widget _userInfo() {
    return Container(
        height: 100,
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://i.pinimg.com/564x/2f/fd/c0/2ffdc0b32487b42f771a95ab75ea32ca.jpg'),
                      )
                  ),
                ),
                _userData(5, '投稿'),
                _userData(99, 'フォロワー'),
                _userData(142, 'フォロー中'),
              ],
            )
        ),
    );
  }

  Widget _userData(int data, String label) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Center(child: Text(data.toString()),),
                  Center(child: Text(label),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}