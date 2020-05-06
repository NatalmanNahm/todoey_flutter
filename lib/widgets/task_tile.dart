import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckbox(isChecked, (bool checkboxState){
        setState(() {
          isChecked = checkboxState;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState
    );
  }
}