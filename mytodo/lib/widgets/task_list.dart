import 'package:flutter/material.dart';
import 'package:mytodo/widgets/task_tile.dart';
import 'package:mytodo/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> mytask = [
    Task(mystring: 'this is john1'),
    Task(mystring: 'this is john2'),
    Task(mystring: 'this is john3'),
    Task(mystring: 'this is john4')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          names: mytask[index].mystring,
          mycheck: mytask[index].myvalue,
          myonchange: (bool) {
            setState(() {
              mytask[index].togglefun();
            });
          },
        );
      },
      itemCount: mytask.length,
    );
  }
}
