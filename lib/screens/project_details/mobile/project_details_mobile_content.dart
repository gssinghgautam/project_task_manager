import 'package:flutter/material.dart';
import 'package:project_task_manager/screens/project_details/project_details_content.dart';

class ProjectDetailsMobileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 60.0),
      child: ProjectDetailsContent(),
    );
  }
}
