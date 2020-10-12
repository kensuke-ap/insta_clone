import 'package:http/http.dart' as http;

class PostApiProvider {
  fetchPostApi(String _requestUrl) async {
    final _response = await http.get(_requestUrl);
    return _response;
  }
}