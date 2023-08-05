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
        print('Faltam $inicio tentativas');
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

  
}
