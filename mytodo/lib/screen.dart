import 'package:flutter/material.dart';
import 'package:mytodo/widgets/task_list.dart';
import 'package:mytodo/widgets/add_screen.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTask());
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30),
            child: Column(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list_alt,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'My Todo',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Colors.white),
                ),
                Text('12 tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: TaskList()),
          )
        ],
      ),
    );
  }
}
