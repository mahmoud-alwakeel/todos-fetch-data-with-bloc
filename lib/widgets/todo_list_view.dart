import 'package:flutter/material.dart';
import 'package:todos_fetch_data_with_bloc/models/todo_model.dart';
import 'package:todos_fetch_data_with_bloc/widgets/todo_widget.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key, required this.todos});

  final List<TodoModel> todos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return CustomTodo(todoModel: todos[index],);
        },
      ),
    );
  }
}