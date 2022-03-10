import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
      title: Text('This is sample Task'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
