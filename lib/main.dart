import 'package:daily_tasks/constatnts.dart';
import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_cubit.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/views/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(kBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchTaskCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        routes: {EditView.id: (context) => EditView()},
        home: TasksView(),
      ),
    );
  }
}
