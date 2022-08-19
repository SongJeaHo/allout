import 'package:allout/components/allout_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _pages = [
    Container(color: AlloutColors.background),
    Container(color: AlloutColors.background),
    Container(color: AlloutColors.background),
    Container(color: AlloutColors.background),
    Container(color: AlloutColors.background),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AlloutColors.background_grey,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: _AppBar(),
          body: _pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: AlloutColors.background_grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions), label: '종목'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: '주변'),
              BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: '칼럼'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
            ],
            type: BottomNavigationBarType.fixed,
          ),
          // bottomNavigationBar: _BottomAppBar(),
        ),
      ),
    );
  }

  AppBar _AppBar() {
    return AppBar(
      backgroundColor: AlloutColors.background_grey,
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

  // BottomAppBar _BottomAppBar() {
  //   return BottomAppBar(
  //       elevation: 0,
  //       child: Container(
  //         height: kBottomNavigationBarHeight,
  //         color: AlloutColors.background_grey,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //             CupertinoButton(
  //                 child: Icon(
  //                   CupertinoIcons.home,
  //                   color: _currentIndex == 0
  //                       ? AlloutColors.primaryColor
  //                       : AlloutColors.allout_grey,
  //                 ),
  //                 onPressed: () {
  //                   setState(() {
  //                     _currentIndex = 0;
  //                   });
  //                 }),
  //             CupertinoButton(
  //                 child: Icon(
  //                   CupertinoIcons.home,
  //                   color: _currentIndex == 1
  //                       ? AlloutColors.primaryColor
  //                       : AlloutColors.allout_grey,
  //                 ),
  //                 onPressed: () {
  //                   setState(() {
  //                     _currentIndex = 1;
  //                   });
  //                 }),
  //             CupertinoButton(
  //                 child: Icon(
  //                   CupertinoIcons.map,
  //                   color: _currentIndex == 2
  //                       ? AlloutColors.primaryColor
  //                       : AlloutColors.allout_grey,
  //                 ),
  //                 onPressed: () {
  //                   setState(() {
  //                     _currentIndex = 2;
  //                   });
  //                 }),
  //             CupertinoButton(
  //                 child: Icon(
  //                   CupertinoIcons.news,
  //                   color: _currentIndex == 3
  //                       ? AlloutColors.primaryColor
  //                       : AlloutColors.allout_grey,
  //                 ),
  //                 onPressed: () {
  //                   setState(() {
  //                     _currentIndex = 3;
  //                   });
  //                 }),
  //             CupertinoButton(
  //                 child: Icon(
  //                   CupertinoIcons.settings,
  //                   color: _currentIndex == 4
  //                       ? AlloutColors.primaryColor
  //                       : AlloutColors.allout_grey,
  //                 ),
  //                 onPressed: () {
  //                   setState(() {
  //                     _currentIndex = 4;
  //                   });
  //                 }),
  //           ],
  //         ),
  //       ));
  // }

  BottomAppBar _BottomAppBar() {
    return BottomAppBar(
        elevation: 0,
        child: Container(
          height: kBottomNavigationBarHeight,
          color: AlloutColors.background_grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoButton(
                  child: Icon(
                    CupertinoIcons.home,
                    color: _currentIndex == 0
                        ? AlloutColors.primaryColor
                        : AlloutColors.allout_grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  }),
              CupertinoButton(
                  child: Icon(
                    CupertinoIcons.home,
                    color: _currentIndex == 1
                        ? AlloutColors.primaryColor
                        : AlloutColors.allout_grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  }),
              CupertinoButton(
                  child: Icon(
                    CupertinoIcons.map,
                    color: _currentIndex == 2
                        ? AlloutColors.primaryColor
                        : AlloutColors.allout_grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  }),
              CupertinoButton(
                  child: Icon(
                    CupertinoIcons.news,
                    color: _currentIndex == 3
                        ? AlloutColors.primaryColor
                        : AlloutColors.allout_grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  }),
              CupertinoButton(
                  child: Icon(
                    CupertinoIcons.settings,
                    color: _currentIndex == 4
                        ? AlloutColors.primaryColor
                        : AlloutColors.allout_grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _currentIndex = 4;
                    });
                  }),
            ],
          ),
        ));
  }
}
