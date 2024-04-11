import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('test');

  void createInitialData() {
    toDoList = [
      ["test 1", false],
      ["test 2", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
