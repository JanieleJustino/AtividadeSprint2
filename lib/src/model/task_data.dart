import 'package:uuid/uuid.dart';

class TaskData {
  TaskData({
    required this.legenda,
    required this.descricao,
    this.statusTask = false,
  });

  final String id = const Uuid().v4();
  final String legenda;
  final String descricao;
  bool statusTask;
}
