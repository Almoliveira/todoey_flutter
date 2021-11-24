import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
