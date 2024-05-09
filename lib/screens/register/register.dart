import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
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
                  MaterialPageRoute(builder: (context) => const Login()),
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
