void main() {
  print('Início main');
  Future.sync(() {
    print('Função Future executada sincronicamente');
    return 'Resultado Future';
  }).then((print));
  print('Fim main');
}