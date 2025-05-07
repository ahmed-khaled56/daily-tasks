class AddTaskStates {}

class InitAddTaskState extends AddTaskStates {}

class LoadingAddTaskState extends AddTaskStates {}

class SuccessAddTaskState extends AddTaskStates {}

class FailureAddTaskState extends AddTaskStates {
  final String errorMessage;

  FailureAddTaskState({required this.errorMessage});
}
