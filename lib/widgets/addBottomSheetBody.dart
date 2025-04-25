import 'package:daily_tasks/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Addbottomsheetbody extends StatelessWidget {
  const Addbottomsheetbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        textField(hintText: 'Task Name', onchange: (value) {}),
        textField(hintText: 'Describtion', onchange: (value) {}),
      ],
    );
  }
}
