class TodoModel {
  final int id;
  final String title;

  const TodoModel({
    required this.id, 
    required this.title,
  });

  factory TodoModel.fromJson(map) {
    return TodoModel(
      id: map['id'], 
      title: map['title'],
    );
  }
}