import 'package:daily_tasks/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:daily_tasks/cubits/add_task_cubit/add_task_states.dart';
import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_cubit.dart';
import 'package:daily_tasks/widgets/addBottomSheetForm.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Addbottomsheetbody extends StatefulWidget {
  const Addbottomsheetbody({super.key});

  @override
  State<Addbottomsheetbody> createState() => _AddbottomsheetbodyState();
}

class _AddbottomsheetbodyState extends State<Addbottomsheetbody> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTaskCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BlocConsumer<AddTaskCubit, AddTaskStates>(
            listener: (context, state) {
              if (state is LoadingAddTaskState) {
                CircularProgressIndicator();
              } else if (state is SuccessAddTaskState) {
                Navigator.pop(context);
                BlocProvider.of<FetchTaskCubit>(context).fetchTask();
              } else if (state is FailureAddTaskState) {
                print('task not added');
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is LoadingAddTaskState ? true : false,
                child: Addbottomsheetform(),
              );
            },
          ),
        ),
      ),
    );
  }
}
