import 'package:insta_clone/domain/post_model.dart';
import 'package:insta_clone/api_provider/post_api_provider.dart';
import 'dart:convert';

class PostRepository {
  fetchQuestionRepository() async {

    final String _requestUrl = 'https://moss-study.com/Stage/hello/';

    final _response = await PostApiProvider().fetchPostApi(_requestUrl);

    // if(_response.statusCode == 200) {
    //   List<PostModel> list = [];
    //   final decoded = json.decode(utf8.decode(_response.bodyBytes));
    //   for(var item in decoded['qa_bundle_list']) {
    //     list.add(PostModel.fromJson(item));
    //   }
    //   return list;
    // } else {
    //   throw Exception('fail to load questiooModel');
    // }
    return PostModel.dummyData;
  }
}