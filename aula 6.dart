
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

//exercício 3
/*
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
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

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minhas receitas"),
          backgroundColor: Color.fromARGB(0, 114, 114, 207),
        ),
        body: Column(
          children: dados.entries.map((categoria) => Column( 
            children: [
              Text(categoria.key, 
              style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold),
            ),
            for (String value in categoria.value)
              Text(
                value,
                style: TextStyle(fontSize: 18),
                ),  
          ],
          ),
          ).toList(),
        ),
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
