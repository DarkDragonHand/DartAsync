import 'dart:async';
//!Importante
//*Timeout é o tempo limite para execução de um Future
//!O Timeout não cancela a execução do Future
//!Ele vai continuar fazendo a execução mesmo com timeout, até ela terminar.
Future<void> main() async {
  /*final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());
  aguardando.timeout(
    Duration(seconds: 1),
    onTimeout: () {
      print('Terminou com Timeout');
    },
  ).then((value) {
    print('Terminou a execução');
  }).catchError((erro) {
    print('Terminou com erro: $erro');
  });*/

  try {
    final aguardando = await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
  } on TimeoutException catch (e) {
    print('Finalizou com TimeOut');
  }
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
