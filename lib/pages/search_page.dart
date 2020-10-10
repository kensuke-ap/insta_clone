import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:insta_clone/widgets/molecules/post_grid.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                _searchBar(),
                PostGrid(),
              ],
            ),
          ),
        ),
      bottomNavigationBar: Footer(),
    );
  }

  Widget _searchBar() {
    return Container(
        height: 80,
        child: SearchBar(
              searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
              headerPadding: EdgeInsets.symmetric(horizontal: 10),
              listPadding: EdgeInsets.symmetric(horizontal: 10),
              emptyWidget: Text("empty"),
              indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              onItemFound: (Post post, int index) {
                return Container(
                  color: Colors.lightBlue,
                  child: ListTile(
                    title: Text(post.title),
                    isThreeLine: true,
                    subtitle: Text(post.body),
                    onTap: () {
                      print('onTap');
                    },
                  ),
                );
              },
          )
    );
  }
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}