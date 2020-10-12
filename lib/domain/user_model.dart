class UserInfoModel {

  // ユーザーID
  final int id;

  // ユーザーアイコン（URL）
  final String icon;
  
  // ユーザー名
  final String name;

  // フォロワー数
  final int follower;

  // フォロー数
  final int follow;

  UserInfoModel({this.id, this.icon, this.name, this.follower, this.follow});
}