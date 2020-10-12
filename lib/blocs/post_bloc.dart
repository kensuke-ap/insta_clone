

import 'dart:async';
import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/repository/post_repository.dart';

class PostBloc {

  final _postModelController = StreamController<List<PostModel>>.broadcast();
  Stream<List<PostModel>> get postModelStream => _postModelController.stream;
  Sink<List<PostModel>> get postModelSink => _postModelController.sink;

  PostBloc() {
    print('PostBloc Constractor.');
    fetchPostList();
  }

  void fetchPostList() async {
    final PostRepository _postRepository = PostRepository();
    final List<PostModel> _postResponse = await _postRepository.fetchQuestionRepository();
    postModelSink.add(_postResponse);
  }

  List<PostModel> loadSamplePost() {
    List<PostModel> result = List();
    var item1 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'yataro',
      postImage: 'https://i.pinimg.com/474x/cb/0f/92/cb0f9293eecaf0abeb8d71f696013bd2.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item2 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'zirou',
      postImage: 'https://i.pinimg.com/474x/bd/c6/86/bdc686369bac6307ec7e32e33066c76a.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item3 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'ジェシー',
      postImage: 'https://i.pinimg.com/474x/29/5b/d7/295bd749cfed078544b85c364218190a.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item4 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: '雪だるま',
      postImage: 'https://i.pinimg.com/474x/af/23/3f/af233f253dc436a7241c9eff5de4eddf.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item5 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'さんご',
      postImage: 'https://i.pinimg.com/474x/91/cd/0b/91cd0b67e691cfb2ad8c544d9e66bca6.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item6 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'メガネ',
      postImage: 'https://i.pinimg.com/474x/a0/c6/c9/a0c6c93007039b7f6d486cb9b1d09650.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );
    var item7 = PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'taro',
      postImage: 'https://i.pinimg.com/474x/af/d8/c7/afd8c7ba613d24893019dceb784fad4d.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    );

    result.add(item1);
    result.add(item2);
    result.add(item3);
    result.add(item4);
    result.add(item5);
    result.add(item6);
    result.add(item7);

    return result;
  }
}