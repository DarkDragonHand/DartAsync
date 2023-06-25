void main() {
  final totalAlunos = buscarTotalDeAlunos();
  totalAlunos.then((totalAlunosValue) {
    print('O total de alunos da ADF é: $totalAlunosValue');
  });
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotalDeAlunos() async {
  print('Esse ponto da função é sincrono');
  final buscandoTotalDeAlunos = await Future.value(1000);
  print('Esse ponto da função é depois do Await');
  return buscandoTotalDeAlunos;
}