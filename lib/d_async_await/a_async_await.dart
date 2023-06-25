void main() {
  final nome = metodoAssincronoSemAwait();
  nome.then(print).catchError(print);
}

Future<String> metodoAssincronoSemAwait() {
  return Future.value('Guilherme Potter Petry');
}

//*O async 'envelopa' uma função dizendo que ela vai retornar um valor
//*do tipo Future de algum tipo, seria como se tivesse retornando Future.value()
//*Precisa Tipar com Future<> quando declara com async para definir
//*que é uma função que espera um future como retorno.
//*Também é uma boa pratica fazer dessa forma.
Future<String> metodoAssincrono() async {
  return 'Guilherme Potter Petry';
}

//**Não é uma boa pratica não tipar o retorno da função
metodoAssincronoMaPratica() async {
  return 'Não é uma boa prática fazer dessa forma';
}

//*Nem tipar como void, pois na chamada da função pra uma variavel
//*receber o valor, não vai poder trabalhar com as funções do Future a partir dela.
void metodoAssincronoVoid() async {

}