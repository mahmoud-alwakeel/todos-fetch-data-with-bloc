import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todos_fetch_data_with_bloc/models/todo_model.dart';
import 'package:todos_fetch_data_with_bloc/network_services/todo_service.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  // we declared a variable of TodoService because if we have another event and we are going to
  // call TodosServcie again and this is not the best approach, so we declared an instance variable todoService 
  // and we are going to take the Object of TodoService from the constructor. to be made once
  final TodoService todoService;
  TodoBloc({required this.todoService}) : super(TodoLoadingState()) {
    on<TodoEvent>((event, emit) async {
      if (event is getAllTodosEvent) {
        emit(TodoLoadingState());
       try {
         var todos = await todoService.getTodos();
         emit(TodoLoadedSuccessfulyState(todoModel: todos));
       } catch (e) {
        emit(const TodoFaliureState(message: "Something went wrong please try again later"));
       }
      }
    });
  }
}
