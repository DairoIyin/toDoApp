import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/models/task.dart';

String? newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //this stuff be like magic.Omo. The background container is squared at the edges and its the color of the greyed background
    //the container on top is white with rounded coners. SO it looks like one but they are actually two. Ideaa!
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(Task(name: newTaskTitle));
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}

// () {
// setState(() {
// tasks.add(Task(name: newTask));
// });
// }
