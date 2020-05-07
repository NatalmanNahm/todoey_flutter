import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeyflutter/models/Task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
  final List<Task> tasks;
  TaskList(this.tasks);
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (bool checkboxState){
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      );
    },
    itemCount: widget.tasks.length,
    );
  }
}