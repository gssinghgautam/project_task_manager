import 'package:flutter/cupertino.dart';
import 'package:project_task_manager/model/project/project_model.dart';
import 'package:project_task_manager/model/project/project_status_model.dart';
import 'package:project_task_manager/model/project/task_model.dart';
import 'package:project_task_manager/utils/app_color.dart';
import 'package:responsive_builder/responsive_builder.dart';

final projectList = [
  ProjectModel(
      projectInitial: "GH",
      projectName: "Green House",
      startColor: Color(0xFFF744C8),
      endColor: Color(0xFFF73488)),
  ProjectModel(
      projectInitial: "CP",
      projectName: "Cyber Punk",
      startColor: Color(0xFF3D7CDC),
      endColor: Color(0xFF5DD5BB)),
  ProjectModel(
      projectInitial: "EC",
      projectName: "Easy Crypto",
      startColor: Color(0xFF6643BA),
      endColor: Color(0xFFBA6BD2)),
  ProjectModel(
      projectInitial: "TA",
      projectName: "Travel App",
      startColor: Color(0xFF3BB0ED),
      endColor: Color(0xFF695AED)),
  ProjectModel(
      projectInitial: "LP",
      projectName: "Landing Page",
      startColor: Color(0xFFEB7366),
      endColor: Color(0xFFF6B976)),
  ProjectModel(
      projectInitial: "8+",
      projectName: "",
      startColor: Color(0xFF3C3F53),
      endColor: Color(0xFF3C3F53))
];

ProjectStatusModel fetchStatus(String status) {
  switch (status) {
    case "approved":
      return ProjectStatusModel(
          bgColor: TASK_APPROVED_BG_COLOR,
          textColors: TASK_APPROVED_COLOR,
          status: "Approved");
    case "progress":
      return ProjectStatusModel(
          bgColor: TASK_PROGRESS_BG_COLOR,
          textColors: TASK_PROGRESS_COLOR,
          status: "In Progress");
    case "review":
      return ProjectStatusModel(
          bgColor: TASK_REVIEW_BG_COLOR,
          textColors: TASK_REVIEW_COLOR,
          status: "In Review");
    case "waiting":
    default:
      return ProjectStatusModel(
          bgColor: TASK_WAITING_BG_COLOR,
          textColors: TASK_WAITING_COLOR,
          status: "Waiting");
  }
}

List<TaskModel> get projectTaskList => [
      TaskModel(createdAt: "Today", taskList: [
        Task(task: "Create initial layout for homepage", status: "approved"),
        Task(
            task: "Fixing icons with transparent background",
            status: "progress"),
        Task(
            task: "Discussions against workflow improvements",
            status: "review"),
        Task(task: "Create initial layout for homepage", status: "waiting")
      ]),
      TaskModel(createdAt: "Upcoming", taskList: [
        Task(task: "Create initial layout for homepage", status: "waiting"),
        Task(
            task: "Fixing icons with transparent background",
            status: "waiting"),
        Task(
            task: "Discussions against workflow improvements",
            status: "waiting"),
        Task(task: "Create initial layout for homepage", status: "waiting")
      ])
    ];

//{
//'task_list' : [{
//"task" : "Create initial layout for homepage",
//"status" : "approved"
//},{
//"task" : "Fixing icons with transparent background",
//"status" : "approved"
//},{
//"task" : "Discussions against workflow imporvements",
//"status" : "approved"
//},{
//"task" : "Create quoutation for redesigning of app",
//"status" : "approved"
//}]
//}


double calculatePadding(SizingInformation sizingInfo) {
  switch (sizingInfo.deviceScreenType) {
    case DeviceScreenType.Desktop:
      return 100.0;
      break;
    case DeviceScreenType.Mobile:
      return 16.0;
      break;
    case DeviceScreenType.Tablet:
      return 50.0;
      break;
    default:
      return 100.0;
  }
}