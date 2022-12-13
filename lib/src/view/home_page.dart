import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:listadetarefas/src/controller/task_controller.dart';
import 'package:listadetarefas/src/model/task_data.dart';
import 'package:listadetarefas/src/view/tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = GetIt.instance.get<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Tarefas diárias"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        actions: [
          PopupMenuButton<MenuActionType>(
            onSelected: _handleMenuClick,
            itemBuilder: (context) => [
              const PopupMenuItem<MenuActionType>(
                value: MenuActionType.adicionartask,
                child: Text("Adicionar nova tarefa"),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) => SingleChildScrollView(
              child: SizedBox(
                  height: 200,
                  child: controller.listData.isEmpty
                      ? const Center(
                          child: SizedBox(
                            child: Text("Nenhuma tarefa em aberto..."),
                          ),
                        )
                      : Observer(
                          builder: (_) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.7,
                              child: ListView.builder(
                                  itemCount: controller.listData.length,
                                  itemBuilder: ((context, index) => Dismissible(
                                      key: ValueKey<TaskData>(
                                          controller.listData[index]),
                                      direction: DismissDirection.endToStart,
                                      background: Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                              162, 244, 67, 54),
                                          child: const Text(
                                            "Remover",
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      onDismissed: (direction) {
                                        var id = controller.listData
                                            .toList()[index]
                                            .id;
                                        controller.remover(id);
                                      },
                                      child: Tasks(
                                        controller.listData.toList()[index],
                                      )))),
                            );
                          },
                        )),
            ),
          ),
        ],
      ),
    );
  }

  void _handleMenuClick(MenuActionType menuActionType) {
    switch (menuActionType) {
      case MenuActionType.adicionartask:
        Navigator.of(context).pushNamed("/RegisterTask");
        break;
    }
  }
}

enum MenuActionType { adicionartask }
