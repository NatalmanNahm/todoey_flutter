import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  bool isChecked = false;
  final String taskTitle;

  TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
//          onChanged: toggleCheckboxState
      ),
    );
  }
}

//(bool checkboxState){
//setState(() {
//isChecked = checkboxState;
//});
//}),
