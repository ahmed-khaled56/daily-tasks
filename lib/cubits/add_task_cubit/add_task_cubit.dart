import 'package:daily_tasks/cubits/add_task_cubit/add_task_states.dart';
import 'package:daily_tasks/models/task_model.dart';
import 'package:bloc/bloc.dart';

class AddTaskCubit extends Cubit<AddTaskStates> {
  AddTaskCubit() : super(InitAddTaskState());

  addTask(TaskModel task) {}
}
