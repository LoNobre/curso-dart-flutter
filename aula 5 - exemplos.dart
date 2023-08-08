/*Future<void> fetchData() async{
  try {
    final data = await fetchSomeData();
    print ('dados recebidos: $data');
  } catch (error) {
    print ('erro: $error');
  }
}

Future<String> fetchSomeData() {
  return Future.delayed(Duration(seconds: 5), (){
    return 'Dados importantes';
  });
}

void main(){
  fetchData();
  print('Continue');
}*/

/*import 'dart:async';

Stream<int> countNumbers(int max) async*{
  for (int i = 1; i <=max; i++){
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}

void main() {
  final Stream <int> numberStream = countNumbers(6);
  numberStream.listen((number) {
    print('Número: $number');
  });
}*/

/*Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i<= to; i++){
    yield i;
  }
}

void main () async{
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}*/

/*import 'dart:async';
void main(){
  final streamController = StreamController<int>();

  final stream = streamController.stream;
  final subscription = stream.listen((data) {
    print('Recebido: $data');
  });

  for (var i = 1; i<=5; i++){
    streamController.sink.add(i);
  }

  streamController.close();
  subscription.cancel();
}*/

/*
void main() {
  final periodicStream = Stream<int>.periodic(const Duration(seconds: 2), (count) => count++).take(5);
  final valueStream = Stream.value('Hello');
  
  periodicStream.listen((value) {
    print('Valor periódico: $value');
  });

  valueStream.listen((value) {
    print('Valor único: $value');
  });

}*/

print('------------------------------------------------------------------------------------------------');

// exemplo extra

import 'dart:async';

Future<void> main() async {
  // Define um controlador de stream
  StreamController<List<String>> streamController =
  StreamController<List<String>>();

  //ATENÇÃO AQUI
  //Ouve todos os eventos da stream EM QUALQUER MOMENTO.
  streamController.stream.listen((event) {
    // Aloca todos os nomes do evento atual
    List<String> nomes = event.map((nome) => nome).toList();
    // Imprime todos os nomes alocados no evento atual
    print(nomes);
    // OBS: Se quiser imprimir o tamanho (em caracteres) de cada nome basta colocar .length
    //List<int> lenghNomes = event.map((nome) => nome.length).toList();
  });

  // Adiciona um evento com os nomes
  streamController.sink.add(["Joao", "Maria", "Jose", "Pedro", "Ana"]);

  // Bloqueia a execução por 3 segundos
  await Future.delayed(const Duration(seconds: 3));

  // Adicionar um outro evento com novos nomes
  streamController.sink.add(["Marcia", "Beto", "Patricia", "Maria", "Marcos"]);

  // Bloqueia a execução por 2 segundos - Adicionar um outro evento com novos nomes
  await Future.delayed(
      const Duration(seconds: 2),
          () => streamController.sink
          .add(["Felipe", "Thiago", "Victor", "Larissa", "Thais"]));
}
