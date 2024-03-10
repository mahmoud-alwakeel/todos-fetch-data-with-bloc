import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_fetch_data_with_bloc/bloc/todo_bloc.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(message, style: const TextStyle(
            fontWeight: FontWeight.w700
          ),),
          ElevatedButton(onPressed: (){
            BlocProvider.of<TodoBloc>(context).add(getAllTodosEvent());
          }, child: const Text('Try again'))
        ],
      ),
    );
  }
}