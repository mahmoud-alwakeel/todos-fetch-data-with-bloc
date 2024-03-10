class TodoModel {
  final int id;
  final String title;
  final bool isCompleted;

  const TodoModel({
    required this.id, 
    required this.title,
    required this.isCompleted,
  });

  factory TodoModel.fromJson(map) {
    return TodoModel(
      id: map['id'], 
      title: map['title'],
      isCompleted: map['completed'],
    );
  }
}