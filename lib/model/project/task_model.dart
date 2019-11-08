class TaskModel {
  TaskModel({this.createdAt, this.taskList});

  String createdAt;
  List<Task> taskList;
}

class Task {
  String task;
  String status;

  Task({this.task, this.status});
}
