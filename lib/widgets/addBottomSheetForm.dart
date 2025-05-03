import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/custom_button.dart';
import 'package:daily_tasks/widgets/custom_textfield.dart';
import 'package:daily_tasks/widgets/edit_colorList.dart';
import 'package:flutter/material.dart';

class Addbottomsheetform extends StatelessWidget {
  const Addbottomsheetform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(hintText: 'Task Name', onchange: (value) {}),
        SizedBox(height: 40),
        textField(hintText: 'Describtion', onchange: (value) {}),
        SizedBox(height: 40),
        EditColorlist(),
        SizedBox(height: 40),
        CustomButton(label: "Add", onPressed: () {}),
      ],
    );
  }
}
