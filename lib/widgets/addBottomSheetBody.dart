import 'package:daily_tasks/widgets/addBottomSheetForm.dart';

import 'package:flutter/material.dart';

class Addbottomsheetbody extends StatelessWidget {
  const Addbottomsheetbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Addbottomsheetform(),
      ),
    );
  }
}
