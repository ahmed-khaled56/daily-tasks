import 'package:daily_tasks/constatnts.dart';
import 'package:daily_tasks/cubits/add_task_cubit/add_task_states.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

class AddTaskCubit extends Cubit<AddTaskStates> {
  AddTaskCubit() : super(InitAddTaskState());

  addTask(TaskModel task) async {
    try {
      emit(LoadingAddTaskState());

      var TaskBox = Hive.box<TaskModel>(kBoxName);

      await TaskBox.add(task);
      emit(SuccessAddTaskState());
    } catch (e) {
      emit(FailureAddTaskState(errorMessage: e.toString()));
    }
  }
}
