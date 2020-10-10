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
                _tagList(),
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
              searchBarPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              headerPadding: EdgeInsets.symmetric(horizontal: 10),
              listPadding: EdgeInsets.symmetric(horizontal: 10),
              emptyWidget: Text("empty"),
              indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
          )
    );
  }

  Widget _tagList() {
    return Container(
      height: 50,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _tagItem('a'),
          _tagItem('b'),
          _tagItem('b'),
          _tagItem('d'),
          _tagItem('e'),
          _tagItem('f'),
          _tagItem('g'),
        ],
      ),
    );
  }

  Widget _tagItem(String tagName) {
    return Container(
        padding: EdgeInsets.only(top: 5.0, right: 2.5, bottom: 5.0, left: 2.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Container(
        width: 80.0,
        color: Colors.grey,
        child: Center(
          child: Text(tagName),
        ),
      )
    );
  }
}
