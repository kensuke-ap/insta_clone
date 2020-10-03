import 'package:flutter/material.dart';
import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/widgets/molecules/post_item.dart';

class TimeLine extends StatefulWidget {
  TimeLine({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TimeLineState createState() => new _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  ScrollController _scrollController;
  bool _isLoading = false;

  List<PostModel> _items;

  @override
  void initState() {
    _items = List<PostModel>();
    PostModel.dummyData.forEach((content) => _items.add(content));

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentPosition = _scrollController.position.pixels;
      if (maxScrollExtent > 0 &&
          (maxScrollExtent - 20.0) <= currentPosition) {
        _addContents();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, index) {
          return PostItem(_items[index]);
        },
        itemCount: _items.length,
      ),
    );
  }

  Widget _buildListItemSample(String content) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12.0),
      child: Text(content),
    );
  }

  Widget _buildListItem(PostModel postModel) {
    return Container(
      child: Text(postModel.userName)
    );
  }

  _addContents() {
    if (_isLoading) {
      return;
    }
    _isLoading = true;
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        PostModel.dummyData.forEach((content) => _items.add(content));
      });
      _isLoading = false;
    });
  }
}