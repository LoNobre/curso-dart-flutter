//Aula 2 - curso de verão flutter

void main() {
  
  //exercício 1
  double numero1 = 7.2;
  double numero2 = 6.8;
  double valor;
  
  //soma
  valor = numero1 + numero2;
  print('Soma - $valor');
  
  //subtração
  valor = numero1 - numero2;
  print('Subtração - $valor');
  
  //multiplicação
  valor = numero1 * numero2;
  print('Multiplicação - $valor');
  
  //divisão
  valor = numero1 / numero2;
  print('Divisão - $valor');
  
  //resto da divisão
  valor = numero1 % numero2;
  print('Resto da divisão - $valor');
  
  print('---------------------------------');
  
  //exercício 2
  int numero = 54;
  print('numero $numero');
  
  if (numero % 2 == 0)
    print('Esse número é par!');
  
  else
    print('Esse número é impar!');
  
  print('---------------------------------');
  
  //exercício 3
  
  int numero = 43;
  bool caso1 = numero > 10 && numero < 20;
  bool caso2 = numero == 0 || numero == 50;
  bool caso3 = numero != 100 || numero == 200;
  
  print('O caso 1 é $caso1');
  print('O caso 2 é $caso2');
  print('O caso 3 é $caso3');
  
  print('---------------------------------');
  //exercício 4
  int idade = 17;
  
  if (idade >= 18)
    print('Você é maior de idade!');
  else
    print ('Você é menor de idade!');
  
  print('---------------------------------');
  //exercício 5
  int diaSemana = 4;
  
  switch(diaSemana){
    case 1:
      print('Hoje é segunda-feira.');
      break;
    case 2:
      print('Hoje é terça-feira.');
      break;
    case 3:
      print('Hoje é quarta-feira.');
      break;
    case 4:
      print('Hoje é quinta-feira.');
      break;
    case 5:
      print('Hoje é sexta-feira.');
      break;
    case 6:
      print('Hoje é sábado.');
      break;
    case 7:
      print('Hoje é domingo.');
      break;
  }
}
