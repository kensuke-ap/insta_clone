import 'package:flutter/material.dart';
import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/widgets/molecules/post_item.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';
import 'package:insta_clone/blocs/bloc_provider.dart';

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
    final bloc = BlocProvider.of(context).bloc;

    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/800px-Instagram_logo.svg.png'),
          width: 100,
          height: 40,
        )

      ),
      body: StreamBuilder<List<PostModel>>(
        stream: bloc.postModelStream,
        builder: (context, snapshot) {
          if(!snapshot.hasData) return initialData();
          List<PostModel> modelList = snapshot.data;
          return ListView.builder(
            controller: _scrollController,
            itemBuilder: (context, index) {
              return PostItem(model: modelList[index]);
            },
            itemCount: _items.length,
          );
        }
      ),

      bottomNavigationBar: Footer(),
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

  Widget initialData() {
    return Center(child: Text('loading'),);
  }
}