void main() {
  Future((){}); //*Incompleto, vai ser executado ainda!!!

  Future.value(''); //*Sucesso
  Future.error(''); //*Erro
}

Future<String> func1() {
  return Future.value('Qualquer valor de sucesso');
}