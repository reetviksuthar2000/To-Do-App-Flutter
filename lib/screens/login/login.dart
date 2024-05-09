import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Todo%20page/todo_list_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: const TextStyle(fontWeight: FontWeight.w200),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email Address",
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
                print(value);
              },
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              style: const TextStyle(fontWeight: FontWeight.w200),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
                print(value);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ToDoListPage()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
