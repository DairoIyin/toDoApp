import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = true;
  String? taskTitle = '';
  Function(bool?) toggleCheckbox;
  Function() deleteTask;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckbox,
      required this.deleteTask});
  @override
  Widget build(BuildContext context) {
    var check = isChecked;
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
