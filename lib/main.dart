import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_fetch_data_with_bloc/bloc/todo_bloc.dart';
import 'package:todos_fetch_data_with_bloc/network_services/todo_service.dart';
import 'package:todos_fetch_data_with_bloc/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => TodoBloc(todoService: TodoService())..add(getAllTodosEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
