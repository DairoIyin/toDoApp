import 'package:flutter/material.dart';

class Task {
  String? name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  bool toggleDone() {
    //the left ! is negation, the right ! is to force it to accept null.
    return isDone = !isDone;
  }
}
