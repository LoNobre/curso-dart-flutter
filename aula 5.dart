//Exercício1

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 5));
    return 'Dados encontrados';
  }

void main() async {
  await fetchData().then((dados) => print(dados));
}
