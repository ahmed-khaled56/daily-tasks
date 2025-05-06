import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/edit_colorList.dart';
import 'package:daily_tasks/widgets/edit_textField.dart';
import 'package:flutter/material.dart';

class Editviewbody extends StatelessWidget {
  const Editviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            EditTextfield(hintText: 'Task Name', onchange: (value) {}),
            SizedBox(height: 40),
            EditTextfield(hintText: 'Describtion', onchange: (value) {}),
            SizedBox(height: 40),
            EditColorlist(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
