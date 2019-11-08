import 'package:flutter/material.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/utils/helper.dart';

class ProjectTaskItem extends StatelessWidget {
  ProjectTaskItem({
    this.title,
    this.status,
  });

  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    final statusModel = fetchStatus(status);
    return ListTile(
      contentPadding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          status == "approved"
              ? Icons.check_circle
              : Icons.radio_button_unchecked,
          color: status == "approved" ? TASK_APPROVED_COLOR : TITLE_TEXT_COLOR,
          size: 30.0,
        ),
      ),
      title: Text(
        "Create initial layout for home page",
        style: TextStyle(
            color: TITLE_TEXT_COLOR,
            fontWeight: FontWeight.w400,
            fontSize: 16.0),
      ),
      trailing: Chip(
        backgroundColor: statusModel.bgColor,
        label: Container(
          width: 90.0,
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Text(
            statusModel.status,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: statusModel.textColors,
              fontWeight: FontWeight.w700,
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }

//  Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//  crossAxisAlignment: CrossAxisAlignment.center,
//  mainAxisSize: MainAxisSize.max,
//  children: <Widget>[
//  Row(
//  mainAxisSize: MainAxisSize.min,
//  mainAxisAlignment: MainAxisAlignment.center,
//  crossAxisAlignment: CrossAxisAlignment.center,
//  children: <Widget>[

//  SizedBox(width: 16.0,),
//  Text()
//  ],
//  )
//  ],
//  )
}
