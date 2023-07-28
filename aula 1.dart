void main() {
//Exercício 1
  String nome = 'Giselle Lorrane Nobre Melo';
  int idade = 28;
  bool ehNovato = false;
  double peso = 56.700;
  List notas = [5, 7, 8.8, 9.8];
  List disciplinas = ['calculo', 'fisica', 'programacao'];
  String endereco = '';
  
  print(nome);
  print(idade);
  print(ehNovato);
  print(peso);
  print(notas);
  print(disciplinas);
  print(endereco);

print('-----------------------------------------------------------');  

//Exercício 2
String redacao = 'Lorem Ipsum is mais melhor text of the printing and typesetting industry about férias.';
  
  if (redacao.contains('férias')){
    print(redacao);
    print('O texto contém a palavra férias!');
  }
  else {
    print('O texto não contém a palavra férias');
  }
  print('O texto contém ${redacao.length} palavras');
  
  if (redacao.contains('mais melhor')){
    print(redacao.replaceAll('mais melhor', 'melhor'));
    
  }

print('----------------------------------------------------------');

//Exercício 3
List<double> notasA = [5, 7, 8.8, 9.8];
  List<double> notasB = [11, 4, 8, 8.7];
 
  print('Notas aluno A $notasA');
  print('Notas aluno B $notasB');
  
  //nota 10
  print('Atribuição de 10 na última avaliação');
  notasA.removeLast();
  notasA.add(10);
  print(notasA);
  notasB.removeLast();
  notasB.add(10);
  print(notasB);
  
  //remover a terceira nota
  print('Remoção de terceira nota');
  print(notasA.removeAt(2));
  print(notasA);
  print(notasB.removeAt(2));
  print(notasB);
    
  //criar uma lista com as notas do primeiro semestre, com duas primeiras notas
  print('Sublista com notas do primeiro semestre');
  print(notasA.sublist(0,2));
  print(notasB.sublist(0,2));
  
  //remover nota de valor 11
  print('Remoção de nota indevida');
  print(notasB.removeAt(0));
  print(notasB);
  
  //ordenar as notas em ordem crescente
  notasA.sort((a, b) => a.compareTo(b));
  print('Ordenação de notas $notasA');
  notasB.sort((a, b) => a.compareTo(b));
  print('Ordenação de notas $notasB');

print('-----------------------------------------------------------------------');

//Exercício 4

//Exercício 5

}