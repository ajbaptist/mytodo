import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'TYPE HERE'),
              ),
              TextButton(onPressed: null, child: Text('ADD'))
            ],
          ),
        ),
      ),
    );
  }
}
