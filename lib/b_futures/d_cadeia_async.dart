void main() {
  func1().then((value) {
    func2(value).then((value) => print(value));
  });

  func1().then((value) => func2(value)).then((value) => print('2: $value'));

  var future1 = func1();
  var future2 = future1.then((value) => func2(value));
  future2.then((value) => print(value));

  print(future1.hashCode);
  print(future2.hashCode);
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'Parametro 1';
  });
}

Future<String> func2(String parametro) {
  return Future.value('Parametro recebido e processado: $parametro');
}
