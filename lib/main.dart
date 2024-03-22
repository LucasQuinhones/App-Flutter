import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void _getListApi(){
    http.get(
      Uri.https('api.themoviedb.org', '/4/list/1'),
      headers: {
        'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3NGJkZWVmNDg5ODhlMTk0MWVlN2JmNWY0MTgzMWQ0NyIsInN1YiI6IjY1ZmM0NGM2MGJjNTI5MDE0OWFlNDY5ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.CVkb6GF2r97G91PBwGuFC9vScg8S-6ZGAjyxPyoKMn4',
        'content-type': 'application/json'
      }
    ).then(
      (Response value) => print(value.body),
    );
  }


  @override
  void initState(){
    super.initState();
    _getListApi();
  }

  @override
  Widget build(BuildContext context) {
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
