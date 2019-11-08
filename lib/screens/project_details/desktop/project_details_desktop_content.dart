import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/project_details/project_details_content.dart';

class ProjectDetailsDesktopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 60.0),
      child: ProjectDetailsContent(),
    );
  }
}
