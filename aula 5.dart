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
