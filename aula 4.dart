//exercício 1
class Veiculo{
  String marca;
  String modelo;
  String ano;
  
  Veiculo({
    this.marca = 'Honda',
    this.modelo = 'PCX',
    this.ano = '2023',
  });
  
  void apresentaVeiculo(){
    print('Dados do veículo: $marca, $modelo, $ano');
  }
}

void main (){
  Veiculo veiculo = Veiculo();
  veiculo.apresentaVeiculo();
  
}
print('-----------------------------------------------------------------------');
//exercício 2

class Carro{
  String marca;
  String modelo;
  String ano;
  String cor;
  String quilometragemAnual;
  String qdePortas;
  
  Carro({
    this.marca = 'Hundai',
    this.modelo = 'Hb20',
    this.ano = '2022',
    this.cor = 'Branco',
    this.quilometragemAnual = '37589',
    this.qdePortas = '4',
  });

  void apresentaCarro(){
  print('Dados do carro: Quilometragem anual - $quilometragemAnual, Quantidade de portas - $qdePortas');
  }
}

class Moto{
  String marca;
  String modelo;
  String ano;
  String cor;
  String cilindradas;
  String partidaEletrica;

  Moto({
    this.marca = 'Honda',
    this.modelo = 'Biz 110i',
    this.ano = '2022',
    this.cor = 'Prata',
    this.cilindradas = '55',
    this.partidaEletrica = 'Sim',
  });
  
  void apresentaMoto(){
  print('Dados da moto: Cilindradas - $cilindradas, Possui partida eletrica - $partidaEletrica');
  }
}

void main() {
  Carro carro = Carro();
  carro.apresentaCarro();
  
  Moto moto = Moto();
  moto.apresentaMoto();
}

print('------------------------------------------------');

//exercício 3
