import 'package:flutter/material.dart';
import 'package:todos_fetch_data_with_bloc/network_services/todo_service.dart';
import 'package:todos_fetch_data_with_bloc/widgets/custom_loading.dart';
import 'package:todos_fetch_data_with_bloc/widgets/todo_list_view.dart';

class TodoListViewBuilder extends StatelessWidget {
  const TodoListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: TodoService().getTodos(), 
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return TodoListView(
            todos: snapShot.data!,
          );
        } else if (snapShot.hasError) {
            return const Center(
              child: Text("Ops there was an error"),
            ); 
          } else {
            return const CustomLoading();
          }
    });
  }
}