//exercício 1
class Veiculo{
  final String marca;
  final String modelo;
  final String ano;
  
  const Veiculo({
    required this.marca,
    required this.modelo,
    required this.ano,
  });
  
  void apresentaVeiculo() {
    print('Dados do veículo ');
    print('Marca: ${marca}');
    print('Modelo: ${modelo}');
    print('Ano: ${ano}');
  }
}

void main (){
  final Veiculo veiculo = Veiculo(
  marca: 'Honda',
  modelo: 'PCX',
  ano: '2023',
  );
  
  veiculo.apresentaVeiculo();
  
}
print('-----------------------------------------------------------------------');
//exercício 2 e 3


class Carro{
  String marca;
  String modelo;
  String ano;
  String cor;
  int quilometragemAtual;
  String qdePortas;
   
  Carro({
    this.marca = 'Hundai',
    this.modelo = 'Hb20',
    this.ano = '2022',
    this.cor = 'Branco',
    this.quilometragemAtual = 37589,
    this.qdePortas = '4',
  });

  void apresentaCarro(){
    String statusUso;
    if (quilometragemAtual < 15000){
      statusUso = 'Seminovo';
    } else if (quilometragemAtual > 15000 && quilometragemAtual < 20000){
      statusUso = 'Usado';
    } else{
      statusUso = 'Antigo';
    }
  print('Informações do carro \nQuantidade de portas: $qdePortas, \nQuilometragem atual: $quilometragemAtual, \nQualidade de uso: $statusUso.\n');
  }
}

class Moto{
  String marca;
  String modelo;
  String ano;
  String cor;
  int cilindradas;
  String partidaEletrica;

  Moto({
    this.marca = 'Honda',
    this.modelo = 'Biz 110i',
    this.ano = '2022',
    this.cor = 'Prata',
    this.cilindradas = 55,
    this.partidaEletrica = 'Sim',
  });
  
  void apresentaMoto(){
    String categoriaMoto;
    if (cilindradas < 125){
      categoriaMoto = 'Leve';
    } else if (cilindradas > 125 && cilindradas < 500){
      categoriaMoto = 'Normal';
    } else {
      categoriaMoto = 'Esportiva';
    }
  print('Informações da moto \nPossui partida eletrica: $partidaEletrica, \nCilindradas: $cilindradas, \nCategoria: $categoriaMoto.');
  }
}

void main() {
  Carro carro = Carro();
  carro.apresentaCarro();
  
  Moto moto = Moto();
  moto.apresentaMoto();
}

//exercício 4
