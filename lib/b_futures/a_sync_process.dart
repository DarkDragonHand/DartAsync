void main() {
  print('Iniciando main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print('Finalizando main');
}

void func1(int i) {
  print('Iniciando Func1');
  Future.delayed(Duration(seconds: 2), () => print('Fazendo algo complexo func $i'));
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  Future.delayed(Duration(seconds: 1), () => print('Fazendo algo complexo func 2'));
  print('Iniciando Func2');
}