
import 'package:flutter/material.dart';
//exercício 1
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
        body: Text('Sem receitas ainda'),
      ),
    );
  }
}

/*
//exercício 2
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
        body: const Column(children: [
          Text(
            'Sobremesas',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,  children: [
            Text('Torta de Maçã'),
            Text('Mousse de Chocolate'),
            Text('Pudim de Leite Condensado'),
          ]),
          Text(
            'Pratos principais',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text('Frango Assado com batatas'),
            Text('Espaguete à Bolonhesa'),
            Text('Risoto de Cogumelos'),
          ]),
          Text(
            'Aperitivos',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text('Bolinhos de queijo'),
            Text('Bruschetta de Tomate e Manjericão'),
            Text('Canapés de Salmão com Cream Cheese'),
          ])
        ]),
      ),
    );
  }
}

*/

/*
//exercício 3
import 'package:flutter/material.dart';

void main() {
  final Map<String, List<String>> dados = {
    'Sobremesas': [
      'Torta de Maçã',
      'Mousse de Chocolate',
      'Pudim de Leite Condensado',
    ],
    'Pratos principais': [
      'Frango Assado com Batatas',
      'Espaguete à Bolonhesa',
      'Risoto de Cogumelos',
    ],
    'Aperitivos': [
      'Bolinhos de Queijo',
      'Bruschetta de Tomate e Manjericão',
      'Canapés de Salmão com Cream Cheese',
    ],
  };
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
        body: const Column(children: [
          Text(
            'Sobremesas',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Torta de Maçã',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Mousse de Chocolate',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Pudim de Leite Condensado',
                  style: const TextStyle(fontSize: 18),
                ),
              ]),
          Text(
            'Pratos principais',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Frango Assado com batatas',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Espaguete à Bolonhesa',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Risoto de Cogumelos',
                  style: const TextStyle(fontSize: 18),
                ),
              ]),
          Text(
            'Aperitivos',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Bolinhos de queijo',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Bruschetta de Tomate e Manjericão',
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  'Canapés de Salmão com Cream Cheese',
                  style: const TextStyle(fontSize: 18),
                ),
              ])
        ]),
      ),
    );
  }
}


*/

/*
//exercício 4

*/

/*
//exercício 5

*/
