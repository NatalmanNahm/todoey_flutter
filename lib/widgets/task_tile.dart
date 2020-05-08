import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  bool isChecked = false;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressed;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
      ),
    );
  }
}
