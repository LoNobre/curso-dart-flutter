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
//exercício 2

abstract class Veiculo {
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

  class Carro extends Veiculo {
    final int quilometragemAtual;
    final String qdePortas;

    const Carro({
      required super.marca,
      required super.modelo,
      required super.ano,
      required this.quilometragemAtual,
      required this.qdePortas,
    });

    @override
    void apresentaCarro(){
      print('Informações do carro');
      super.apresentaVeiculo();
      print('Quilometragem: ${quilometragemAtual}');
      print('Quantidade de portas: ${qdePortas}\n\n');
    }
  }

class Moto extends Veiculo{
  final int cilindradas;
  final String partidaEletrica;

  const Moto({
    required super.marca,
    required super.modelo,
    required super.ano,
    required this.cilindradas,
    required this.partidaEletrica,
  });

  @override
  void apresentaMoto(){
    print('Informações da moto');
    super.apresentaVeiculo();
    print('Cilindradas: ${cilindradas}');
    print('Possui partida elétrica? ${partidaEletrica}');
  }
}

void main() {
  final Carro carro = Carro (
    marca: 'Hundai',
    modelo: 'Hb20',
    ano: '2022',
    quilometragemAtual: 37589,
    qdePortas: '4',
  );

  carro.apresentaCarro();

  final Moto moto = Moto (
    marca: 'Honda',
    modelo: 'Biz 110i',
    ano: '2022',
    cilindradas: 55,
    partidaEletrica: 'Sim',
  );

  moto.apresentaMoto();
}

print('---------------------------------------------------------------------------------');
// exercício 3

abstract class Veiculo {
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

  class Carro extends Veiculo {
    final int quilometragemAtual;
    final String qdePortas;

    const Carro({
      required super.marca,
      required super.modelo,
      required super.ano,
      required this.quilometragemAtual,
      required this.qdePortas,
    });

    @override
    void apresentaCarro(){
      print('Informações do carro');
      super.apresentaVeiculo();
      print('Quilometragem: ${quilometragemAtual}');
      print('Quantidade de portas: ${qdePortas}');

      final String statusUso;
      if (quilometragemAtual <  15000 ){
        statusUso =  'Seminovo' ;
      } else  if (quilometragemAtual >  15000  && quilometragemAtual <  20000 ){
        statusUso =  'Usado' ;
      } else {
        statusUso =  'Antigo' ;
      }
      print ('Qualidade de uso: $statusUso.\n');
    }
  }

  class Moto extends Veiculo {
    final int cilindradas;
    final String partidaEletrica;

    const Moto({
      required super.marca,
      required super.modelo,
      required super.ano,
      required this.cilindradas,
      required this.partidaEletrica,
    });

    @override
    void apresentaMoto() {
      print('Informações da moto');
      super.apresentaVeiculo();
      print('Cilindradas: ${cilindradas}');

      String categoriaMoto;
      if (cilindradas < 125) {
        categoriaMoto = 'Leve';
      } else if (cilindradas > 125 && cilindradas < 500) {
        categoriaMoto = 'Normal';
      } else {
        categoriaMoto = 'Esportiva';
      }
      print('Categoria: $categoriaMoto.');
    }
  }

void main() {
  final Carro carro = Carro (
    marca: 'Hundai',
    modelo: 'Hb20',
    ano: '2022',
    quilometragemAtual: 37589,
    qdePortas: '4',
  );

  carro.apresentaCarro();

  final Moto moto = Moto (
    marca: 'Honda',
    modelo: 'Biz 110i',
    ano: '2022',
    cilindradas: 55,
    partidaEletrica: 'Sim',
  );

  moto.apresentaMoto();
}

print('---------------------------------------------------------------------------------');
//exercício 4
