import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function myfun;
  AddTask({this.myfun});
  @override
  Widget build(BuildContext context) {
    String mynewVal;

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
                onChanged: (newVal) {
                  mynewVal = newVal;
                },
                decoration: InputDecoration(hintText: 'TYPE HERE'),
              ),
              TextButton(onPressed: myfun(mynewVal), child: Text('ADD'))
            ],
          ),
        ),
      ),
    );
  }
}
