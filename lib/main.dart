import 'package:daily_tasks/constatnts.dart';
import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/views/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      routes: {EditView.id: (context) => EditView()},
      home: TasksView(),
    );
  }
}
