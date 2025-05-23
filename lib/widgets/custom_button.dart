import 'package:daily_tasks/constatnts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool? isLoading;

  void Function() onPressed;

  CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child:
              isLoading == false
                  ? Text(label, style: TextStyle(color: Colors.black))
                  : Center(child: SizedBox(child: CircularProgressIndicator())),
        ),
      ),
    );
  }
}
