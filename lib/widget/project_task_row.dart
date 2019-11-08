import 'package:flutter/material.dart';
import 'package:project_task_manager/model/project/task_model.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:project_task_manager/widget/project_task_item.dart';

class ProjectTaskRow extends StatelessWidget {
  ProjectTaskRow({this.taskModel});

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "${taskModel.createdAt}",
                style: TextStyle(
                  color: TITLE_TEXT_COLOR,
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: ICON_COLOR,
                  size: 36.0,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          height: 1.0,
          color: ICON_COLOR,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final task = taskModel.taskList[index];
            return ProjectTaskItem(
              title: task.task,
              status: task.status,
            );
          },
          itemCount: taskModel.taskList.length,
        )
      ],
    );
  }
}
