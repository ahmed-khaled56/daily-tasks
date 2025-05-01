import 'package:daily_tasks/constatnts.dart';
import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  //final String data;

  void Function(String?)? onchange;
  final TextInputType? textType;

  textField({
    super.key,
    required this.hintText,

    @required this.textType,
    required this.onchange,

    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      width: double.infinity,
      child: TextField(
        onChanged: onchange,

        maxLines: maxLines,
        keyboardType: textType,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          fillColor: Color(0xff28435A),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 2, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: kPrimaryColor ?? Colors.white,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
