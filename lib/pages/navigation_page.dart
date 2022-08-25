import 'package:allout/components/allout_colors.dart';
import 'package:allout/pages/app_bar.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  int _appBarFlag = 0;

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
    return Scaffold(
      appBar: AlloutAppBar(
        appBar: AppBar(),
      ),
      body: Container(
          color: AlloutColors.background, child: _pages[_currentIndex]),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Colors.grey.withOpacity(0.7),
              offset: Offset(0, -1),
            )
          ]),
          child: bottomNavigationBar()),
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
              Icons.person,
            ),
            label: '프로필'),
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
      currentIndex: _currentIndex,
      backgroundColor: AlloutColors.backgroundGrey,
      selectedItemColor: AlloutColors.primaryColor,
      unselectedItemColor: AlloutColors.alloutGrey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10, //선택된 아이템의 폰트사이즈
      unselectedFontSize: 10,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
