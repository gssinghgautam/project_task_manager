import 'package:flutter/material.dart';
import 'package:project_task_manager/utils/app_color.dart';

class ProjectDetailsMobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Cyber Punk",
            style: TextStyle(
              color: TITLE_TEXT_COLOR,
              fontWeight: FontWeight.w800,
              fontSize: 30.0,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
            style: TextStyle(
              color: SUB_TITLE_TEXT_COLOR,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
