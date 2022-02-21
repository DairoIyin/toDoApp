import 'dart:collection';
import 'package:flutter/material.dart';
import 'task.dart';

//tasks is private and a getter of type UnmodifiableListView was created, this just makes an umodifiable version of a list.
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(Task? newTask) {
    _tasks.add(newTask!);
    notifyListeners();
  }

  void updateTaskState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
