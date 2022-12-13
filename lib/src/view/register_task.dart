import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:listadetarefas/src/controller/task_controller.dart';
import 'package:listadetarefas/src/model/task_data.dart';
import 'package:listadetarefas/strings_validacao.dart';

class RegisterTask extends StatelessWidget {
  RegisterTask({super.key});
  final limparLegenda = TextEditingController();
  final limparDescricao = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final constroller = GetIt.instance.get<TaskController>();

  void clearText() {
    limparLegenda.clear();
    limparDescricao.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar uma tarefa"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Observer(
            builder: (context) => Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null) return Validacao.retornoListaVazia;
                      if (value.length < 3) return Validacao.retornoMinimo;
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Nome da tarefa",
                    ),
                    onChanged: (value) {
                      constroller.setLegenda(value);
                    },
                    controller: limparLegenda,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null) return Validacao.retornoListaVazia1;
                      if (value.length < 3) return Validacao.retornoMinimo1;
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Detalhes da tarefa",
                    ),
                    onChanged: (value) {
                      constroller.setDescricao(value);
                    },
                    controller: limparDescricao,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 2),
                            backgroundColor: Color.fromARGB(0, 0, 0, 0),
                            content: Text(
                              "Tarefa adicionada!",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                        var task = TaskData(
                          legenda: constroller.legenda,
                          descricao: constroller.descricao,
                        );
                        constroller.addList(task);
                      } else {
                        return;
                      }
                      clearText();
                    },
                    child: const Text("Adicionar"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
