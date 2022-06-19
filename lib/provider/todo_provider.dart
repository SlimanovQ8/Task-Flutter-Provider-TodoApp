import 'package:todo_app/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  var todos = [
    Todo( title: "todo"),
  ];

  void addTodo({required String title}) {
    todos.add(Todo( title: title),
    );

    notifyListeners();
  }

  void CheckDone(Todo todo) {
    Todo todoToUpdate =todo;
    todoToUpdate.done = !todoToUpdate.done;
    notifyListeners();
  }
}


