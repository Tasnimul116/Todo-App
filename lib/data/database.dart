import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];
  final _mybox = Hive.box('mybox');

  //run this method id this is the 1st  time opeining this app

  void createInitialData() {
    todoList = [
      ['Do Exercise', false],
    ];
  }

  //load data from database

  void loadData () {
    todoList = _mybox.get("TODOLIST");
  }

  //update  the database

  void updateDatabase() {
     _mybox.put("TODOLIST", todoList);
  }
}
