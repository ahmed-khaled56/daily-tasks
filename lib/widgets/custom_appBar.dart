import 'package:daily_tasks/widgets/custom_Icon.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    @required this.onTap,
  });
  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
          Spacer(),

          CustomIcon(icon: icon, onTap: onTap),
        ],
      ),
    );
  }
}
