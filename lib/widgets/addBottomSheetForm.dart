import 'package:daily_tasks/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:daily_tasks/widgets/add_color_list.dart';
import 'package:daily_tasks/widgets/custom_button.dart';
import 'package:daily_tasks/widgets/custom_textForm_field.dart';
import 'package:daily_tasks/widgets/edit_colorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

String? Taskname;
String? content;

class Addbottomsheetform extends StatefulWidget {
  const Addbottomsheetform({super.key});

  @override
  State<Addbottomsheetform> createState() => _AddbottomsheetformState();
}

class _AddbottomsheetformState extends State<Addbottomsheetform> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String formatedDte = DateFormat('dd-MM-yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextformField(
            hintText: 'Task Name',
            onchange: (value) {
              Taskname = value;
            },
          ),
          SizedBox(height: 40),
          CustomTextformField(
            hintText: 'Describtion',
            onchange: (value) {
              content = value;
            },
          ),
          SizedBox(height: 40),
          EditColorlist(),
          SizedBox(height: 100),
          CustomButton(
            label: "Add",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var task = TaskModel(
                  lable: Taskname,
                  sublable: content,
                  color: Colors.blue.hashCode,
                  date: formatedDte,
                );
                BlocProvider.of<AddTaskCubit>(context).addTask(task);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
