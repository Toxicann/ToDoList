import 'package:flutter/material.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'test1'),
    Task(name: 'test2'),
    Task(name: 'test3'),
  ];

  List<Task> get taskdata => tasks;

  int get taskCount => tasks.length;

  void addTaskData(String taskName) {
    final task = Task(name: taskName);
    tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTasks(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
