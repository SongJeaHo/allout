import 'package:allout/components/allout_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _pages = [
    Center(
      child: Text('page 1'),
    ),
    Center(
      child: Text('page 2'),
    ),
    Center(
      child: Text('page 3'),
    ),
    Center(
      child: Text('page 4'),
    ),
    Center(
      child: Text('page 5'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AlloutColors.backgroundGrey,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: appBar(),
          body: Container(
              color: AlloutColors.background, child: _pages[_currentIndex]),
          bottomNavigationBar: bottomNavigationBar(),
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
            ),
            label: '종목'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '홈'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: '주변'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            label: '칼럼'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: '설정'),
      ],
      elevation: 0,
      currentIndex: _currentIndex,
      selectedItemColor: AlloutColors.primaryColor,
      unselectedItemColor: AlloutColors.alloutGrey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12, //선택된 아이템의 폰트사이즈
      unselectedFontSize: 12,
      backgroundColor: AlloutColors.backgroundGrey,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AlloutColors.backgroundGrey,
      leading: new SvgPicture.asset(
        'assets/icons/allout_logo.svg',
        color: AlloutColors.primaryColor,
      ),
      actions: <Widget>[
        new IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.search,
              color: Colors.black,
            )),
        new IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.person,
              color: Colors.black,
            )),
      ],
    );
  }
}
