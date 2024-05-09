import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/Todo%20page/todo_list_page.dart';
// import 'package:flutter_application_1/screens/login/login.dart';
import 'package:flutter_application_1/screens/register/register.dart';
// import 'package:flutter_application_1/screens/second%20page/second_page.dart';
// import 'package:flutter_application_1/screens/second%20page/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'To DO APP',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Register(),
        debugShowCheckedModeBanner: false);
  }
}
