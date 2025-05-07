import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/custom_appBar.dart';
import 'package:daily_tasks/widgets/custom_button.dart';
import 'package:daily_tasks/widgets/custom_textForm_field.dart';
import 'package:daily_tasks/widgets/editViewBody.dart';
import 'package:daily_tasks/widgets/edit_textField.dart';
import 'package:flutter/material.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});
  static String id = "EditViewId";

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            CustomAppbar(title: 'Edit Task', icon: Icons.check, onTap: () {}),
            Editviewbody(),
          ],
        ),
      ),
    );
  }
}
