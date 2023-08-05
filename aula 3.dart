void main() {
  // exercício 1
  List <int> contagemFoguete = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1,];
  for (var i = 0; i < contagemFoguete.length; i++)
    print('Contagem regressiva: ${contagemFoguete[i]}');
  
  print('----------------------------------');

  //exercicio 2

  int numero = Random().nextInt(10) + 1;
  int inicio = 1;
  int tentativa = 3;
  bool acerto = false;

  while(inicio <= tentativa){
    print('Tentativa $inicio, insira um palpite:');
    String? input = stdin.readLineSync();

    int valorInserido = int.parse(input!);

    if (valorInserido == numero){
      acerto = true;
      print('Parabéns, você acertou!');
      break;
    }
    else if (numero < valorInserido){
        print('O número é menor que o palpite!');
    }
    else if (numero > valorInserido){
        print('O número é maior que o palpite');
      }
    else{
        print('Tentativa expirada');
        print('O número é: $numero');
      }
      inicio++;
    }

    if (acerto){
      print('Você acertou.');
    }
    else {
      print('Fim de jogo.');
    }

  print('---------------------------------------------------------------------------------------');

  //exercício 3
  print('Insira um valor limite:  ');
  double valorLimite = double.parse(stdin.readLineSync()!);

  List<double> valores = [10.4, 23.4, 66.8, 88.2];

  List<double> valoresPares = valores.where((element) => element <= valorLimite && element % 2 == 0).toList();

  print(valoresPares);

  print('------------------------------------------------------------------------------------');

  //exercício 4
  List<double> valor = [];
  
  print('Insira as notas:');
  String? input = stdin.readLineSync();

  while (input != "limite"){
    double nota = double.parse(input!);
    valor.add(nota);
    input = stdin.readLineSync();
  }
  
  double media = calculoNotas(valor);
  print('Media das notas $media');
  
  print('----------------------------------------------------------------------------------');

  //exercício 5
  
  
}
