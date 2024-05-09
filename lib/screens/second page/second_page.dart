import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String _name = '';
  final _x = 'Hello World';

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    var logger = Logger(
      printer: PrettyPrinter(),
    );

    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
    final data = jsonDecode(response.body);
    setState(() {
      _name = data['name'];
    });

    logger.f(_name);
    logger.f(_x);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text(_name),
      ),
    );
  }
}
