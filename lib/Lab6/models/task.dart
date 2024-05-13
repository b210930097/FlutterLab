import '../repositories/repository.dart';

class Task {
  final int id;
  String description;
  bool complete;
  Task({
    required this.id,
    this.description = '',
    this.complete = false,
  });

  // named constructor
  // deserialization
  Task.fromModel(Model model)
      : id = model.id,
        description = model.data['description'],
        complete = model.data['complete'];

  // serialization
  Model toModel() => Model(id: id, data: {
        'description': description,
        'complete': complete,
      });
}
