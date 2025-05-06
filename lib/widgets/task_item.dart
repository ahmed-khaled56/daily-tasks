import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  bool isPressed = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'play fetniss',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: Text(
                  'i will play footballl ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withAlpha(120),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},

                  icon: Icon(Icons.delete, size: 30),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 5),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        isPressed = true;
                        setState(() {});
                      },
                      icon:
                          isPressed
                              ? CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.green,
                              )
                              : CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                              ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 200,
                      top: 50,
                      bottom: 10,
                    ),
                    child: Text(
                      "11/10/2025",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withAlpha(120),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
