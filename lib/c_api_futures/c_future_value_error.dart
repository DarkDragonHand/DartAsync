void main() {
  print('Início main');
  Future((){}); //*Incompleto, vai ser executado ainda!!!

  Future.value(''); //*Sucesso
  Future.error(''); //*Erro
  print('Fim main');
}

Future<String> func1() {
  return Future.value('Qualquer valor de sucesso');
}