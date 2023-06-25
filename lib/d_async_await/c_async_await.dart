//*O main também pode ser tipado com Future
//*Assim ele deixa de ser prioridade no event loop
//*Por isso e por conta do await, os console ficou na ordem de cima pra baixo
//*Sem prioridades maiores
Future<void> main() async {
  print('Início');
  final nomeUsuarioNormal = buscarNomeUsuarioNormal();
  nomeUsuarioNormal.then(print);

  final nomeUsuarioAsyncAwait = await buscarNomeUsuarioAsyncAwait();
  print(nomeUsuarioAsyncAwait);
  print('Fim');
}

Future<int> buscarId() async => 29;
Future<String> buscarNome(int id) async => 'Guilherme Potter Petry($id)';

Future<String> buscarNomeUsuarioNormal() {
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return 'Usuário: $nome';
    });
  });
}

Future<String> buscarNomeUsuarioAsyncAwait() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuário: $nome';
}