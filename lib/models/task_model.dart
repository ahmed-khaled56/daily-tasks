import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String? lable;
  @HiveField(1)
  final String? sublable;
  @HiveField(2)
  final String? color;
  @HiveField(3)
  final String? date;

  TaskModel({
    required this.lable,
    required this.sublable,
    required this.color,
    required this.date,
  });
}
