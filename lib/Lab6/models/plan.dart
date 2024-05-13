import './task.dart';
import '../repositories/repository.dart';

class Plan {
  final int id;
  String name;
  List<Task> tasks = [];

  Plan({required this.id, this.name = ''});

  int get completeCount => tasks.where((task) => task.complete).length;
  String get completeMessage => '$completeCount out of ${tasks.length}';

  Plan.fromModel(Model model)
      : id = model.id,
        name = model.data["name"] ?? '',
        tasks = model.data["tasks"]
                ?.map<Task>((task) => Task.fromModel(task))
                ?.toList() ??
            <Task>[];

  Model toModel() => Model(id: id, data: {
        'name': name,
        'tasks': tasks.map((task) => task.toModel()).toList(),
      });
}
