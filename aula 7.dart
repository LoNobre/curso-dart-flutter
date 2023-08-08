//exercício 1
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minhas receitas"),
          backgroundColor: Color.fromARGB(0, 114, 114, 207),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.green[400],
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(10.5),
            width: 150,
            height: 150,
            child: Text('Aula 7 - curso de verão',
                style: TextStyle(
                  color: const Color.fromARGB(255, 20, 19, 18),
                  fontSize: 20,
                )),
          ),
        ),
      ),
    );
  }
}
