//Exercício1

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 5));
    return 'Dados encontrados';
  }

void main() async {
  await fetchData().then((dados) => print(dados));
}

print('------------------------------------------------------------');

//Exercício2

import 'dart:async';

Stream<int> countDownStream(int max) async*{
  for (int i = max; i >= 1 ; i--){
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}

void main() {
  final Stream <int> count = countDownStream(5);
  count.listen((number) {
    print('Número: $number');
  }).onDone(() {
    print('Contagem concluída com sucesso.');
  });
}

print('------------------------------------------------------------');

//Exercício3

import 'dart:async';

Future<int> futureOne() async {
  await Future.delayed(const Duration(seconds: 5));
  return 10 * 100;
}

Future<String> futureTwo() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Processando..';
}

Future<String> futureThree() async {
  await Future.delayed(const Duration(seconds: 10));
  return 'Operação concluída';
}

Future <void> main() async {
  Future.wait([futureOne(), futureTwo(), futureThree()]).then((List<Object> reiceved) {
    print('Dados do Future 1 ${reiceved[0]}');
    print('Dados do Future 2 ${reiceved[1]}');
    print('Dados do Future 3 ${reiceved[2]}');

  });
}

print('------------------------------------------------------------');

//Exercício4

