

enum RootEnum {
  HOME,
  SEARCH,
  ACTIVITY,
  PROFILE,
  COMMENT
}

extension RootEnumExt on RootEnum {
  int get index {
    switch(this){
      case RootEnum.HOME:
        return 0;
        break;
      case RootEnum.SEARCH:
        return 1;
        break;
      case RootEnum.ACTIVITY:
        return 2;
        break;
      case RootEnum.PROFILE:
        return 3;
        break;
      default:
        return 0;
    }
  }

  String get root {
    switch(this){
      case RootEnum.HOME:
        return '/home';
        break;
      case RootEnum.SEARCH:
        return '/search';
        break;
      case RootEnum.ACTIVITY:
        return '/activity';
        break;
      case RootEnum.PROFILE:
        return '/profile';
        break;
      case RootEnum.COMMENT:
        return '/comment';
        break;
      default:
        return '/home';
    }
  }

  static RootEnum toRootEnum(int index) {
    switch(index){
      case 0:
        return RootEnum.HOME;
        break;
      case 1:
        return RootEnum.SEARCH;
        break;
      case 2:
        return RootEnum.ACTIVITY;
        break;
      case 3:
        return RootEnum.PROFILE;
        break;
      default:
        return RootEnum.HOME;
    }
  }
}