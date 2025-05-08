import 'package:daily_tasks/constatnts.dart';
import 'package:daily_tasks/cubits/fetch_task_cubit/fetch_task_states.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class FetchTaskCubit extends Cubit<FetchTaskStates> {
  FetchTaskCubit() : super(InitFetchTaskState());
  List<TaskModel> tasksList = [];
  fetchTask() {
    var Boxtaskslist = Hive.box<TaskModel>(kBoxName);
    tasksList = Boxtaskslist.values.toList();
    emit(SucessFetchTaskState());
  }
}
