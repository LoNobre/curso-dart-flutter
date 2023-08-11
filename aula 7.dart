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

// exercício 2
/*
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: dados.entries.map((categoria) {
              if (categoriaPratos == null || categoriaPratos == categoria.key){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if(busca.isEmpty)
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(categoria.key,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (String value in categoria.value)
                            if(value.contains(busca) || busca.isEmpty)
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text( value,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                        ],
                      ),
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
      ),
    );
  }
}
*/

// exercício 3
/*
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
    'Bebidas': [
      'Água',
      'Cerveja',
      'Refrigerante',
    ]
  };

  final String? categoriaPratos = null;
  final String busca = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: dados.entries.map((categoria) {
              if (categoriaPratos == null || categoriaPratos == categoria.key){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if(busca.isEmpty)
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(categoria.key,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (String value in categoria.value)
                            if(value.contains(busca) || busca.isEmpty)
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text( value,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                        ],
                      ),
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
      ),
    );
  }
}
/*
