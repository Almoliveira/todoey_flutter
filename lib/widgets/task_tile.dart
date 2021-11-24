import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: tapped ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckBoxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState;

            //Temporary Fix
            if (checkboxState == null) {
              tapped = false;
            } else if (checkboxState == false) {
              tapped = false;
            } else {
              tapped = true;
            }
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) toggleCheckBoxState;

  TaskCheckbox({
    required this.checkboxState,
    required this.toggleCheckBoxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
