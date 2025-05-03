import 'package:daily_tasks/widgets/addBottomSheetForm.dart';
import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/custom_button.dart';
import 'package:daily_tasks/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Addbottomsheetbody extends StatelessWidget {
  const Addbottomsheetbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Addbottomsheetform(),
      ),
    );
  }
}
