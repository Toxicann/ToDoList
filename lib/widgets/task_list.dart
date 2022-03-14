import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          title: context.watch<TaskData>().taskdata[index].name,
          isChanged: context.watch<TaskData>().taskdata[index].isDone,
          toggleState: () {
            context
                .read<TaskData>()
                .updateTasks(context.read<TaskData>().taskdata[index]);
          },
          deleteTask: () {
            context
                .read<TaskData>()
                .removeTasks(context.read<TaskData>().taskdata[index]);
          },
        );
      },
      itemCount: context.watch<TaskData>().taskCount,
    );
  }
}
