import 'package:flutter/material.dart';

class TaskDone extends StatefulWidget {
  const TaskDone({super.key});

  @override
  State<TaskDone> createState() => _TaskDoneState();
}

bool isPressed = false;

class _TaskDoneState extends State<TaskDone> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        isPressed = !isPressed;
        setState(() {});
      },
      icon: CircleAvatar(
        radius: 20,
        backgroundColor: isPressed ? Colors.green : Colors.white,
      ),
    );
  }
}
