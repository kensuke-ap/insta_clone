import 'package:flutter/material.dart';
import 'package:insta_clone/enum/root_enum.dart';

class Footer extends StatefulWidget{
  const Footer();

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems =  <BottomNavigationBarItem>[];

  // アイコン情報
  static const _footerIcons = [
    Icons.home,
    Icons.search,
    Icons.favorite_border,
    Icons.person,
  ];

  // アイコン文字列
  static const _footerItemNames = [
    'ホーム',
    'タイムライン',
    'ニュース',
    'ウォレット',
  ];

  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_updateActiveState(0));
    for ( var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_updateDeactiveState(i));
    }
  }

  /// インデックスのアイテムをアクティベートする
  BottomNavigationBarItem _updateActiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black87,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black87,
          ),
        )
    );
  }

  /// インデックスのアイテムをディアクティベートする
  BottomNavigationBarItem _updateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.black26,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black26,
          ),
        )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] = _updateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _updateActiveState(index);
      _selectedIndex = index;

      // indexをEnum化
      var rootEnum = RootEnumExt.toRootEnum(_selectedIndex);

      // 画面遷移
      _rooting(rootEnum);
    });
  }


  void _rooting(RootEnum rootEnum) {
    switch(rootEnum) {
      case RootEnum.HOME:
        Navigator.of(context).pushNamed(RootEnum.HOME.root);
        break;
      case RootEnum.SEARCH:
        Navigator.of(context).pushNamed(RootEnum.SEARCH.root);
        break;
      case RootEnum.ACTIVITY:
        Navigator.of(context).pushNamed(RootEnum.ACTIVITY.root);
        break;
      case RootEnum.PROFILE:
        Navigator.of(context).pushNamed(RootEnum.PROFILE.root);
        break;
      default:
        Navigator.of(context).pushNamed(RootEnum.HOME.root);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
      items: _bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}