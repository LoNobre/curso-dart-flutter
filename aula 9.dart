import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: Tela(),
  ));
}
  
  class Tela extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return const Scaffold(
      body: Column(
      children:[
        Cabecalho(),
        Corpo(valor: 42),
        Contador(valorInicial: 3),
      ],
      ),
      );
    }
  }
  


class Cabecalho extends StatefulWidget {
  const Cabecalho({super.key});
  
  @override
  State <Cabecalho> createState() => _EstadoCabecalho();
  
}

class _EstadoCabecalho extends State<Cabecalho>{
  @override
  Widget build(BuildContext context){
    return const Text('Cabecalho');
  }
}



class Corpo extends StatefulWidget {
  final int valor;
  const Corpo({super.key, required this.valor});
  
  @override
  State <Corpo> createState() => _EstadoCorpo();
}
  
class _EstadoCorpo extends State<Corpo>{
  @override
  Widget build(BuildContext context){
    return Text('Corpo 2: ${widget.valor}');
  }
}

class Contador extends StatefulWidget {
  final int valorInicial;
  const Contador({super.key, required this.valorInicial});

  @override
  State<Contador> createState() => _EstadoContador();
}

class _EstadoContador extends State<Contador>{
  late int valor;
  
  @override
  void initState() {
    super.initState();
      valor = widget.valorInicial;
    
  }
  
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text('$valor'),
        TextButton(
          child: Text('adicionar'),
          onPressed:(){
            setState(() {
              valor += 1;
            });
            },
        ),
      ],
    );
  }
}


  