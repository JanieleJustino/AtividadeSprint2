// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskController on TaskControllerData, Store {
  late final _$legendaAtom =
      Atom(name: 'TaskControllerData.legenda', context: context);

  @override
  String get legenda {
    _$legendaAtom.reportRead();
    return super.legenda;
  }

  @override
  set legenda(String value) {
    _$legendaAtom.reportWrite(value, super.legenda, () {
      super.legenda = value;
    });
  }

  late final _$descricaoAtom =
      Atom(name: 'TaskControllerData.descricao', context: context);

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  late final _$statusTaskAtom =
      Atom(name: 'TaskControllerData.statusTask', context: context);

  @override
  bool get statusTask {
    _$statusTaskAtom.reportRead();
    return super.statusTask;
  }

  @override
  set statusTask(bool value) {
    _$statusTaskAtom.reportWrite(value, super.statusTask, () {
      super.statusTask = value;
    });
  }

  late final _$TaskControllerDataActionController =
      ActionController(name: 'TaskControllerData', context: context);

  @override
  dynamic setLegenda(String value) {
    final _$actionInfo = _$TaskControllerDataActionController.startAction(
        name: 'TaskControllerData.setLegenda');
    try {
      return super.setLegenda(value);
    } finally {
      _$TaskControllerDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescricao(String value) {
    final _$actionInfo = _$TaskControllerDataActionController.startAction(
        name: 'TaskControllerData.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$TaskControllerDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remover(String id) {
    final _$actionInfo = _$TaskControllerDataActionController.startAction(
        name: 'TaskControllerData.remover');
    try {
      return super.remover(id);
    } finally {
      _$TaskControllerDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addList(TaskData task) {
    final _$actionInfo = _$TaskControllerDataActionController.startAction(
        name: 'TaskControllerData.addList');
    try {
      return super.addList(task);
    } finally {
      _$TaskControllerDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
legenda: ${legenda},
descricao: ${descricao},
statusTask: ${statusTask}
    ''';
  }
}
