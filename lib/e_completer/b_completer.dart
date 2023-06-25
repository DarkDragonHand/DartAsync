import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum((sucess) {
    print('Sucesso: $sucess');
  }, (error) {
    print('Erro: $error');
  });

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso Completer: $sucesso');
  } catch (error) {
    print('Erro Completer: $error');
  }
}

class UsuarioRepository {
  //*Utilizando via callbacks normais
  void salvarComum(void Function(String) callbackSucess,
      void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        callbackSucess('Usuário salvo com sucesso!');
      } catch (e) {
        callbackError('Erro');
      }
    });
  }

  //*Utilizando via Future completer
  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        completer.complete('Completer: Usuário salvo com sucesso!');
      } catch (e) {
        completer.completeError('Completer.Error: Erro');
      }
    });
    return completer.future;
  }
}