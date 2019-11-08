import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/project_details/desktop/project_details_desktop_header.dart';
import 'package:project_task_manager/screens/project_details/mobile/project_details_mobile_header.dart';
import 'package:project_task_manager/widget/project_task_row.dart';
import 'package:project_task_manager/utils/helper.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ScreenTypeLayout(
          mobile: ProjectDetailsMobileHeader(),
          desktop: ProjectDetailsDesktopHeader(),
        ),
        SizedBox(
          height: 50.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final taskModel = projectTaskList[index];
            return ProjectTaskRow(
              taskModel: taskModel,
            );
          },
          itemCount: projectTaskList.length,
        ),
      ],
    );
  }
}
