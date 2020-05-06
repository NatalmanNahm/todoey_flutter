import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeyflutter/models/Task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
      );
    },
    itemCount: tasks.length,
    );
  }
}