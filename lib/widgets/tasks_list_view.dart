import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_cubit.dart';
import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_states.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/widgets/task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListView extends StatefulWidget {
  const TasksListView({super.key});

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchTaskCubit, FetchTaskStates>(
      builder: (context, state) {
        List<TaskModel> lisTask =
            BlocProvider.of<FetchTaskCubit>(context).tasksList ?? [];

        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: lisTask.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, EditView.id);
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TaskItem(task: lisTask[index]),
              ),
            );
          },
        );
      },
    );
  }
}
