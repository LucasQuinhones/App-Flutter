import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    http
      .get(
        Uri.https('gianflutter.free.beeceptor.com', '/test')
      )
      .then(
        (value) => print(value.body),
      );

    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Terceira Aula!'),
        ),
      ),
    );
  }
}
