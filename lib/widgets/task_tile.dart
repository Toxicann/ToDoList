import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChanged;
  final String title;
  final VoidCallback toggleState;

  const TasksTile(
      {Key? key,
      required this.title,
      required this.isChanged,
      required this.toggleState})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
      title: Text(
        title,
        style: TextStyle(
            decoration: isChanged ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChanged,
        activeColor: Colors.lightBlueAccent,
        onChanged: (_) => toggleState(),
      ),
    );
  }
}
