import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task(
        'aprender Flutter',
        'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
        3),
    Task('aprender Angular',
        'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
        4),
    Task('aprender Spring',
        'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
        4),
    Task('aprender Spring',
        'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
        5),
    Task('aprender Spring', 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg', 2),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    //updateShouldNotify é quem fica de olho no estado da nossa informação, a informação com que estamos lidando que, no caso, é a nossa lista de tarefas.
    return old.taskList.length != taskList.length;
  }
}
