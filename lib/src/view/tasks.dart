import 'package:flutter/material.dart';
import 'package:listadetarefas/src/model/task_data.dart';

class Tasks extends StatefulWidget {
  const Tasks(this.dados, {super.key});

  final TaskData dados;

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.dados.legenda),
      subtitle: Text(widget.dados.descricao),
      leading: Checkbox(
        activeColor: Colors.green,
        value: widget.dados.statusTask,
        onChanged: (value) {
          setState(() {
            widget.dados.statusTask = !widget.dados.statusTask;
          });
        },
      ),
    );
  }
}
