import 'dart:async';

void main() {
  //*Função que representa os events
  //*Timer(Duration.zero, () {return print('');});

  //*Função que representa as MicroTasks
  //*scheduleMicrotask(() {});

  //*A Função main possui a maior prioridade de execução
  //*Logo depois são as MicroTasks
  //*E por ultimo os Events
  print('Início main');
  Timer.run(() {
    scheduleMicrotask(() => print('Nova MicroTask 1'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  scheduleMicrotask(() => print('MicroTask 1'));
  scheduleMicrotask(() => print('MicroTask 2'));
  print('Fim main');
}
