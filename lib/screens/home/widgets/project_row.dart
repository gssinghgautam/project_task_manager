import 'package:flutter/material.dart';
import 'package:project_task_manager/model/project/project_model.dart';

class ProjectRow extends StatelessWidget {
  ProjectRow(this.project);

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 100.0,
          width: 100.0,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
            gradient: LinearGradient(
              colors: [project.startColor, project.endColor],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            project.projectInitial,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          project.projectName,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
