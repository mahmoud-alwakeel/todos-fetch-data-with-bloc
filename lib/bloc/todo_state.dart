part of 'todo_bloc.dart';

sealed class TodoState extends Equatable {
  const TodoState();
  
  @override
  List<Object> get props => [];
}

final class TodoLoadingState extends TodoState {}

final class TodoLoadedSuccessfulyState extends TodoState {
  final List<TodoModel> todoModel;

  const TodoLoadedSuccessfulyState({required this.todoModel});
  
  @override
  List<Object> get props => [todoModel];
}

final class TodoFaliureState extends TodoState {
  final String message;

  const TodoFaliureState({required this.message});

  @override
  List<Object> get props => [message];
}
