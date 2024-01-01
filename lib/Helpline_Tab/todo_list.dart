import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoItem> _todos = [];
  TextEditingController _textFieldController = TextEditingController();

  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add a new To-Do"),
          content: TextField(
            controller: _textFieldController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String newTodo = _textFieldController.text;
                  if (newTodo.toLowerCase() == "done") {
                    _todos.add(TodoItem(task: newTodo, isDone: true));
                  } else {
                    _todos.add(TodoItem(task: newTodo, isDone: false));
                  }
                  _textFieldController.clear();
                  Navigator.pop(context);
                });
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aesthetic To-Do List"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ExpansionTile(
              title: Text(
                _todos[index].task,
                style: TextStyle(
                  fontSize: 18,
                  decoration: _todos[index].isDone
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _todos[index].isDone = value.toLowerCase() == "done";
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Type 'done' to mark task as done",
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoItem {
  final String task;
  bool isDone;

  TodoItem({required this.task, required this.isDone});
}