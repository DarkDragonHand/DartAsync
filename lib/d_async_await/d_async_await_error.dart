Future<void> main() async {
  print('Início');
  //*Com async e await, pode utilizar melhor do Try-Catch
  //*Para tratamento de erros ou excessões
  try {
    final id = await buscarId();
    final nome = await buscarNome(id);
    print('O nome é: $nome');
    print('Fim');
  } catch (error) {
    print('Aconteceu um erro.');
  }
}

Future<int> buscarId() async => 29;
Future<String> buscarNome(int id) async {
  throw Exception();
  //return 'Guilherme Potter Petry($id)';
}