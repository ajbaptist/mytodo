import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool mycheck = false;
  void callback(bool newval) {
    setState(() {
      mycheck = newval;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'my data is here',
          style: TextStyle(
              decoration: mycheck ? TextDecoration.lineThrough : null),
        ),
        trailing: CheckBox(
          mycheckbox: mycheck,
          mytoggle: callback,
        ));
  }
}

class CheckBox extends StatelessWidget {
  final mycheckbox;
  final Function mytoggle;
  CheckBox({this.mycheckbox, this.mytoggle});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: mycheckbox,
        onChanged: mytoggle);
  }
}
