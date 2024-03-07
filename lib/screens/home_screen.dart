import 'package:flutter/material.dart';
import 'package:todos_fetch_data_with_bloc/widgets/todo_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo's"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
          return const CustomTodo();
        },
        ),
      ),
    );
  }
}