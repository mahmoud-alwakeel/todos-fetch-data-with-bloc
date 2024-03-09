import 'package:flutter/material.dart';
import 'package:todos_fetch_data_with_bloc/models/todo_model.dart';

class CustomTodo extends StatelessWidget {
  const CustomTodo({super.key, required this.todoModel});

  final TodoModel todoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue, 
            radius: 22,
            child: Text(todoModel.id.toString()),),
          title: Text(todoModel.title),
        );
  }
}