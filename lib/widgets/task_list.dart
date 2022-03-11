import 'package:flutter/material.dart';

import './task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList(this.tasks, {Key? key}) : super(key: key);

  final List tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          title: widget.tasks[index].name,
          isChanged: widget.tasks[index].isDone,
          toggleState: () {
            setState(
              () {
                widget.tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
