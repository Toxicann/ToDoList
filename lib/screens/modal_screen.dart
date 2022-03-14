import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class ModalScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: _controller,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
              child: const Text(
                "Add",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                context.read<TaskData>().addTaskData(_controller.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
