import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_fetch_data_with_bloc/bloc/todo_bloc.dart';
import 'package:todos_fetch_data_with_bloc/widgets/custom_error.dart';
import 'package:todos_fetch_data_with_bloc/widgets/custom_loading.dart';
import 'package:todos_fetch_data_with_bloc/widgets/todo_list_view.dart';

class TodosBody extends StatelessWidget {
  const TodosBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoLoadedSuccessfulyState) {
          return TodoListView(todos: state.todoModel);
        } else if (state is TodoFaliureState){
          return CustomError(message: state.message,);
        } else {
          return const CustomLoading();
        }
      } 
      );
    // return FutureBuilder(
    //   future: TodoService().getTodos(), 
    //   builder: (context, snapShot) {
    //     if (snapShot.hasData) {
    //       return TodoListView(
    //         todos: snapShot.data!,
    //       );
    //     } else if (snapShot.hasError) {
    //         return const Center(
    //           child: Text("Ops there was an error"),
    //         ); 
    //       } else {
    //         return const CustomLoading();
    //       }
    // });
  }
}