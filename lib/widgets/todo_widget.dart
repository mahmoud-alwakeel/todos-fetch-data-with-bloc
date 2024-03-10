import 'package:flutter/material.dart';
import 'package:todos_fetch_data_with_bloc/models/todo_model.dart';

class CustomTodo extends StatelessWidget {
  const CustomTodo({super.key, required this.todoModel});

  final TodoModel todoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple[400], 
            radius: 22,
            child: Text(todoModel.id.toString(), style: TextStyle(color: Colors.white),),),
          title: Text(todoModel.title),
          trailing: todoModel.isCompleted ? const Icon(Icons.done) : null,
        );
  }
}