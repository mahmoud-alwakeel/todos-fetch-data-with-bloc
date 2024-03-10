import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos_fetch_data_with_bloc/models/todo_model.dart';

class TodoService {

  Future<List<TodoModel>> getTodos() async{

    const String url = 'https://jsonplaceholder.typicode.com/todos/';
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      List<dynamic> data = jsonDecode(response.body);
      List<TodoModel> todosList = [];

    for (int i = 0; i < data.length; i++) {
      todosList.add(
        TodoModel.fromJson(data[i]),
      );
    }
    
      return todosList;
    } else {
      throw Exception('Failed to load Todos');
    }
  }
}