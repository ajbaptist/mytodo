class Task {
  String mystring;
  bool myvalue;

  Task({this.mystring, this.myvalue = false});
  togglefun() {
    myvalue = !myvalue;
  }
}
