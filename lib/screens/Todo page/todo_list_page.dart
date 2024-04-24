import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});
  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final List<String> _toDoList = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: _toDoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_toDoList[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    TextEditingController controller =
                        TextEditingController(text: _toDoList[index]);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        String editedTask = _toDoList[index];
                        return AlertDialog(
                          title: const Text('Edit task'),
                          content: TextField(
                            controller: controller,
                            decoration: const InputDecoration(
                                hintText: 'Enter task here'),
                            onChanged: (value) {
                              editedTask = value;
                            },
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Save'),
                              onPressed: () {
                                setState(() {
                                  _toDoList[index] = editedTask;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                              'Are you sure you want to delete this '),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Save'),
                              onPressed: () {
                                setState(() {
                                  _toDoList.removeAt(index);
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                    // setState(() {
                    //   _toDoList.removeAt(index);
                    // });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String newTask = '';
              return AlertDialog(
                title: const Text('Add a new task'),
                content: TextField(
                  decoration:
                      const InputDecoration(hintText: 'Enter task here'),
                  onChanged: (value) {
                    newTask = value;
                  },
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Add'),
                    onPressed: () {
                      setState(() {
                        _toDoList.add(newTask);
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
