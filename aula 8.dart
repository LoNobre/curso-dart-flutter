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
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas"),
          backgroundColor: const Color.fromARGB(0, 114, 114, 207),
          toolbarHeight: size.height * 0.1,
        ),
        body: SizedBox(
          height: size.height * 0.9,
          width: size.width,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
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
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: dados.entries.map((categoria) {
                        if (categoriaPratos == null || categoriaPratos == categoria.key){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              if(busca.isEmpty)
                                Center(
                                  child: Text(categoria.key,
                                    style: const TextStyle(
                                        fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    for (String value in categoria.value)
                                      if(value.contains(busca) || busca.isEmpty)
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.symmetric(vertical: 10.5, horizontal:  5.5),
                                            padding: const EdgeInsets.all(8.0),
                                            height: 60,
                                            //width: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.red[300],
                                            ),
                                            child: Column(
                                              children: [
                                                const Expanded(
                                                  child: Icon(
                                                    Icons.restaurant,
                                                    size: 18,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                                Flexible(
                                                  child:
                                                  Text( value,
                                                    style: TextStyle(fontSize: size.width * 0.012),
                                                  ),
                                                ),
                                              ],
                                            ),
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
          ),
        ),
      ),
    );
  }
}
