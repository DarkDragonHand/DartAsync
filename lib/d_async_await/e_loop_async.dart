Future<void> main() async {
  print('Início');
  final nomes = ['Rodrigo', 'Luana', 'Guilherme', 'Valentina'];

  //nomes.forEach(tratarSaudacao);

  /*for (var nome in nomes) {
    await tratarSaudacao(nome);
  }*/

  /*await Future.forEach<String>(nomes, (nome) async {
    await tratarSaudacao(nome);
  });*/

  final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  final nomesProcessados = await Future.wait(nomesFuture);
  print(nomesProcessados);
  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Início saudação nome: $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudação nome: $nome');
    return 'Olá $nome';
  });
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}