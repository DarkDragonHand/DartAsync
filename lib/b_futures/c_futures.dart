void main() {
  print('Levando o carro para o mecânico');
  Future<int>(
    () {
      //*Função assincrona que vai fazer o orçamento da manutenção do nosso carro.
      return 10 ~/ 2;
    },
  ).then((valorOrcamento) {
    print('O orçamento para arrumar o carro é de $valorOrcamento');
  }).whenComplete(() => print('Finalizando'));
  print('Saindo da mecanica');

  print('Fui viajar');
  Future<String>(
    () {
      //*Indo para USA
      throw Exception('Avião caiu');
    },
  ).then((comprado) {
    print('Comprei meu Macbook');
  }).catchError((error) {
    print('Deu ruim, o avião caiu');
  }).whenComplete(() => print('Finalizando'));


  Future<int>(
    () {
      return 10 ~/ 2;
    },
  ).then((value) => print('Valor calculado é $value'), onError: (error) {
    print('Ocorreu um erro $error');
    throw Exception('Outro erro');
  }).catchError((error) {
    print('Ocorreu um erro no catchError $error');
  });
}
