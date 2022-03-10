import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChanged = false;
  taskStateToggler(bool newValue) {
    setState(() {
      isChanged = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
      title: Text(
        'This is sample Task',
        style: TextStyle(
            decoration: isChanged ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskState(isChanged, taskStateToggler),
    );
  }
}

class TaskState extends StatelessWidget {
  const TaskState(this.toggleTaskState, this.taskStateToggle, {Key? key})
      : super(key: key);
  final bool toggleTaskState;
  final Function taskStateToggle;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: toggleTaskState,
      onChanged: (newValue) {
        taskStateToggle(newValue);
      },
    );
  }
}
