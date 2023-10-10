import 'package:flutter/material.dart';
import 'package:primeiro_projeto/data/task_inherited.dart';
import 'package:primeiro_projeto/screens/form_screen.dart';

import '../components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (contextNew) => FormScreen(taskContext: context,))
            );
          },
          child: Icon(Icons.add)),
    );
  }
}