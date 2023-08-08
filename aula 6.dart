
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
            Text('Torta de Maçã', style: TextStyle(fontSize: 18)),
            Text('Mousse de Chocolate', style: TextStyle(fontSize: 18)),
            Text('Pudim de Leite Condensado', style: TextStyle(fontSize: 18)),
          ]),
          Text(
            'Pratos principais',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text('Frango Assado com batatas', style: TextStyle(fontSize: 18)),
            Text('Espaguete à Bolonhesa', style: TextStyle(fontSize: 18)),
            Text('Risoto de Cogumelos', style: TextStyle(fontSize: 18)),
          ]),
          Text(
            'Aperitivos',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text('Bolinhos de queijo', style: TextStyle(fontSize: 18)),
            Text('Bruschetta de Tomate e Manjericão', style: TextStyle(fontSize: 18)),
            Text('Canapés de Salmão com Cream Cheese', style: TextStyle(fontSize: 18)),
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
  MainApp({super.key});

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
        ),
        body: Column(
          children: dados.entries.map((categoria) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Center(
                child: Text(categoria.key, 
                style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
                for (String value in categoria.value)
                Text( value,
                style: const TextStyle(fontSize: 18),
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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

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

  final String? categoriaPratos = 'Sobremesas'; //'Pratos principais' 'Aperitivos'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
        ),
        body: Column(
          children: dados.entries.map((categoria) {
            if (categoriaPratos == null || categoriaPratos == categoria.key){
            return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Center(
                child: Text(categoria.key, 
                style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
                for (String value in categoria.value)
                Text( value,
                style: const TextStyle(fontSize: 18),
                ),
            ],
          );
          }
          else{
            return Container();
          }
          },
          ).toList(),
        ),
      ),
      );
  }
}

*/

/*
//exercício 5
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

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

  final String? categoriaPratos = 'Sobremesas';
  final String busca = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
        ),
        body: Column(
          children: dados.entries.map((categoria) {
            if (categoriaPratos == null || categoriaPratos == categoria.key){
            return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              if(busca.isEmpty)
              Center(
                child: Text(categoria.key, 
                style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
                for (String value in categoria.value)
                  if(value.contains(busca) || busca.isEmpty)
                    Text( value,
                    style: const TextStyle(fontSize: 18),
                    ),
            ],
          );
          }
          else{
            return Container();
          }
          },
          ).toList(),
        ),
      ),
      );
  }
}

*/
