import 'package:daily_tasks/views/edit_view.dart';
import 'package:daily_tasks/views/tasks_view.dart';
import 'package:flutter/material.dart';

void main() {
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
