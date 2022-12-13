import 'package:listadetarefas/src/model/task_data.dart';
import 'package:mobx/mobx.dart';
part 'task_controller.g.dart';

class TaskController = TaskControllerData with _$TaskController;

abstract class TaskControllerData with Store {
  ObservableList<TaskData> listData = ObservableList<TaskData>.of([]);

  @observable
  String legenda = "";

  @observable
  String descricao = "";

  @observable
  bool statusTask = false;

  @action
  setLegenda(String value) {
    legenda = value;
  }

  @action
  setDescricao(String value) {
    descricao = value;
  }

  @action
  remover(String id) {
    listData.removeWhere((e) => e.id == id);
  }

  @action
  addList(TaskData task) {
    listData.add(task);
  }
}
