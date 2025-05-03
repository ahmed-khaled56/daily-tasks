import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/custom_button.dart';
import 'package:daily_tasks/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Addbottomsheetbody extends StatelessWidget {
  const Addbottomsheetbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        children: [
          textField(hintText: 'Task Name', onchange: (value) {}),
          SizedBox(height: 40),
          textField(hintText: 'Describtion', onchange: (value) {}),
          SizedBox(height: 40),
          ColorList(),
          SizedBox(height: 40),
          CustomButton(label: "Add", onPressed: () {}),
        ],
      ),
    );
  }
}
