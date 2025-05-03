import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/widgets/task_item.dart';
import 'package:flutter/material.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EditView.id);
          },
          child: Padding(padding: const EdgeInsets.all(10), child: TaskItem()),
        );
      },
    );
  }
}
