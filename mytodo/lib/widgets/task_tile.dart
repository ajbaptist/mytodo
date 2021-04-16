import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('my data is here'),
        trailing: Checkbox(
          value: false,
          onChanged: null,
        ));
  }
}
