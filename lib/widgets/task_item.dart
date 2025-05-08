import 'package:daily_tasks/models/task_model.dart';
import 'package:daily_tasks/widgets/task_done.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  TaskItem({super.key, required this.task});
  final TaskModel task;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  task.lable!,

                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: Text(
                  task.sublable!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withAlpha(120),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},

                  icon: Icon(color: Colors.white, Icons.delete, size: 40),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 5),
                    child: TaskDone(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 200,
                      top: 50,
                      bottom: 10,
                    ),
                    child: Text(
                      task.date!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withAlpha(120),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
