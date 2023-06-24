void main() {
  print('Início main');
  var future1 = Future.delayed(Duration(seconds: 1), () => 'Future1');
  var future2 = Future.delayed(Duration(seconds: 1), () => 'Future2');
  var future3 = Future.delayed(Duration(seconds: 3), () => 'Future3');
  var future4 = Future.delayed(Duration(seconds: 1), () => 'Future4');
  var future5 = Future.delayed(Duration(seconds: 1), () => Future.error('Erro na execução'));
  print(DateTime.now().toIso8601String());

  Future.wait([future1, future2, future3, future4, future5],
   eagerError: true,
   cleanUp: (successValue) {
    print('Completou $successValue');
  },)
  .then((arrayValues){
    print(DateTime.now().toIso8601String());
    print(arrayValues);
  })
  .catchError((error){
    print(DateTime.now().toIso8601String());
    print(error);
  });

  print('Fim main');
}