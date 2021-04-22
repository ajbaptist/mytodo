import 'package:flutter/material.dart';
import 'package:mytodo/widgets/task_tile.dart';
import 'package:mytodo/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> mytask;
  TaskList(this.mytask);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          names: widget.mytask[index].mystring,
          mycheck: widget.mytask[index].myvalue,
          myonchange: (bool) {
            setState(() {
              widget.mytask[index].togglefun();
            });
          },
        );
      },
      itemCount: widget.mytask.length,
    );
  }
}
