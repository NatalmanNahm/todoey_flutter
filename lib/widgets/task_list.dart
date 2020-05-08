import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/taskData.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState){
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}