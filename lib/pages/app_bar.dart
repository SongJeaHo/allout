import 'package:allout/components/allout_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlloutAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const AlloutAppBar({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AlloutColors.backgroundGrey,
      centerTitle: false,
      title: SvgPicture.asset(
        './assets/icons/allout_logo.svg',
        color: AlloutColors.primaryColor,
        height: 16,
      ),
      actions: <Widget>[
        new IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.search,
              color: Colors.black,
            )),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
