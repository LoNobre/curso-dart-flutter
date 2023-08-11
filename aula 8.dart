import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
    ],
  };

  final String? categoriaPratos = null; //'Sobremesas' 'Pratos principais' 'Aperitivos'
  String busca = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'buscar',
                hintText: 'Buscar por',
              ), onChanged: (novaBusca){
                setState((){
                  busca = novaBusca;
                });
              },
            ),
            Padding(
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
          ],
        ),
      ),
      );
  }
}
