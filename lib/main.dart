import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:listadetarefas/src/controller/task_controller.dart';
import 'package:listadetarefas/src/view/home_page.dart';
import 'package:listadetarefas/src/view/register_task.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton(TaskController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Cronograma diário",
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/RegisterTask": (context) => RegisterTask(),
        });
  }
}
