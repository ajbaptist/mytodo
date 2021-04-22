import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool mycheck;
  final String names;
  final Function myonchange;

  TaskTile({this.names, this.mycheck, this.myonchange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          names,
          style: TextStyle(
              decoration: mycheck ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: mycheck,
            onChanged: myonchange));
  }
}
