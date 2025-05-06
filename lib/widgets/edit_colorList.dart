import 'package:daily_tasks/constatnts.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  ColorItem({required this.isPressed, required this.color});
  bool isPressed;
  Color color;
  @override
  Widget build(BuildContext context) {
    return isPressed == true
        ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: CircleAvatar(backgroundColor: color, radius: 28),
        )
        : CircleAvatar(backgroundColor: color, radius: 30);
  }
}

class EditColorlist extends StatefulWidget {
  const EditColorlist({super.key});

  @override
  State<EditColorlist> createState() => _EditColorlistState();
}

class _EditColorlistState extends State<EditColorlist> {
  int currentInde = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: GestureDetector(
              onTap: () {
                currentInde = index;
                setState(() {});
              },
              child: ColorItem(
                isPressed: currentInde == index,
                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
