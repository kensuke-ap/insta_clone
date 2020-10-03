
class PostModel {

  /// ユーザーのアイコン
  final String userIcon;

  /// ユーザー名
  final String userName;

  /// 投稿画像
  /// TODO Listにする
  final String postImage;

  /// いいね数
  final int like;

  /// コメント
  final List<String> comment;

  PostModel({this.userIcon, this.userName, this.postImage, this.like, this.comment});

  static final List<PostModel> dummyData = [
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/812336851532470422/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/646196246528076807/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/716142778240185896/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/384565255685103488/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/384565255685103488/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/96405248261481518/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/women/34.jpg',
      userName: 'taro',
      postImage: 'https://www.pinterest.jp/pin/739645938786520804/',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
  ];
}