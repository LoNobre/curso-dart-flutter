
class Carro{
  String marca;
  String modelo;
  String ano;
  String cor;
  

  Carro({
    this.marca = 'Hundai',
    this.modelo = 'Hb20',
    this.ano = '2022',
    this.cor = 'Branco',
  });

  void apresentaCarro(){
  print('Dados do carro: $marca, $modelo, $ano, $cor');
}
}

class Moto{
  String marca;
  String modelo;
  String ano;
  String cor;

  Moto({
    this.marca = 'Honda',
    this.modelo = 'Biz 110i',
    this.ano = '2022',
    this.cor = 'Prata',
  });
  
  void apresentaMoto(){
  print('Dados da moto: $marca, $modelo, $ano, $cor');
}
}


void main() {
  Carro carro = Carro();
  carro.apresentaCarro();
  
  Moto moto = Moto();
  moto.apresentaMoto();
}
