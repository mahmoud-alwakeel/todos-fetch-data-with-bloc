import 'package:flutter/material.dart';

class CustomTodo extends StatelessWidget {
  const CustomTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue, 
          radius: 22,
          child: Text('1'),),
        title: Text('data'),
      ),
    );
  }
}