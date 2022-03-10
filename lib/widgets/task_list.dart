import 'package:flutter/material.dart';

import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'test1'),
    Task(name: 'test2'),
    Task(name: 'test3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          title: tasks[index].name,
          isChanged: tasks[index].isDone,
          toggleState: () {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
