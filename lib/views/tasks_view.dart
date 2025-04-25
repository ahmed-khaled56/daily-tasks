import 'package:daily_tasks/widgets/addBottomSheetBody.dart';
import 'package:daily_tasks/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return Addbottomsheetbody();
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [CustomAppbar(title: "Daily Tasks", icon: Icons.search)],
      ),
    );
  }
}
