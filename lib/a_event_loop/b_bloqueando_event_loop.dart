import 'dart:io';

void main() {
  print('Iniciando main');
  print(temperaturaAtual());
  print(previsaoAmanha());
  print('Finalizando main');
}

String temperaturaAtual() {
  sleep(const Duration(seconds: 3));
  return 'Está fazendo 30 graus';
}

String previsaoAmanha() {
  sleep(const Duration(seconds: 4));
  return 'Amanhã fará 34 graus';
}