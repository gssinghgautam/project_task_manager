import 'package:flutter/material.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/utils/flutter_icon.dart';

class NavigationBarMobile extends StatelessWidget with PreferredSizeWidget {
  NavigationBarMobile({@required this.paddingTop, @required this.onPressed});

  final double paddingTop;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop),
      height: kToolbarHeight + paddingTop,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                FlutterIcon.menu,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: MENU_BUTTON_COLOR,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + paddingTop);
}
