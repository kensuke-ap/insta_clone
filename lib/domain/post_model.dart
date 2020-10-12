// @JsonSerializable()
class PostModel {
  /// ID
  // @JsonKey(name: 'id')
  final int id;

  /// ユーザーのアイコン
  // @JsonKey(name: 'user_icon')
  final String userIcon;

  /// ユーザー名
  // @JsonKey(name: 'user_name')
  final String userName;

  /// 投稿画像
  /// TODO Listにする
  // @JsonKey(name: 'post_image')
  final String postImage;

  /// 投稿本文
  // @JsonKey(name: 'post_text')
  final String postText;

  /// いいね数
  // @JsonKey(name: 'like')
  final int like;

  /// コメント
  // @JsonKey(name: 'comment')
  final List<String> comment;

  PostModel({
    this.id, 
    this.userIcon, 
    this.userName, 
    this.postImage, 
    this.postText, 
    this.like, 
    this.comment});

  // factory PostModel.fromJson(Map<String, dynamic> json) => _PostModelFromJson(json);

  // Map<String, dynamic> toJson() => _PostModelToJson(this);

  static final List<PostModel> dummyData = [
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'taro',
      postImage: 'https://i.pinimg.com/474x/af/d8/c7/afd8c7ba613d24893019dceb784fad4d.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'yataro',
      postImage: 'https://i.pinimg.com/474x/cb/0f/92/cb0f9293eecaf0abeb8d71f696013bd2.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'zirou',
      postImage: 'https://i.pinimg.com/474x/bd/c6/86/bdc686369bac6307ec7e32e33066c76a.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'ジェシー',
      postImage: 'https://i.pinimg.com/474x/29/5b/d7/295bd749cfed078544b85c364218190a.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: '雪だるま',
      postImage: 'https://i.pinimg.com/474x/af/23/3f/af233f253dc436a7241c9eff5de4eddf.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'さんご',
      postImage: 'https://i.pinimg.com/474x/91/cd/0b/91cd0b67e691cfb2ad8c544d9e66bca6.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
    PostModel(
      userIcon: 'https://randomuser.me/api/portraits/men/81.jpg',
      userName: 'メガネ',
      postImage: 'https://i.pinimg.com/474x/a0/c6/c9/a0c6c93007039b7f6d486cb9b1d09650.jpg',
      postText: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      like: 30,
      comment: ['good!', 'bad!', 'so so...'],
    ),
  ];
}