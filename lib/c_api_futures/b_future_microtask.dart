void main() {
  print('Início main');
  Future(() {
    return 'Future normal';
  }).then((print));

  Future.microtask(() => 'Future Microtask').then(print);
  print('Fim main');
}