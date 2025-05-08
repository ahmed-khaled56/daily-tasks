import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_cubit.dart';
import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/widgets/addBottomSheetBody.dart';
import 'package:daily_tasks/widgets/custom_appBar.dart';
import 'package:daily_tasks/widgets/task_item.dart';
import 'package:daily_tasks/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  void initstate() {
    BlocProvider.of<FetchTaskCubit>(context).fetchTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            context: context,
            builder: (context) {
              return FractionallySizedBox(
                heightFactor: 0.75,
                child: Addbottomsheetbody(),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          CustomAppbar(title: "Daily Tasks", icon: Icons.search),

          Expanded(child: TasksListView()),
        ],
      ),
    );
  }
}
