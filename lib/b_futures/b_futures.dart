void main() {
  //* Future -> Incompleto, Completo com sucesso, Completo com erro.
  var future = Future(() {
    //*Função assincrona
  }).then((value) {
    //*Registrando função que será executada quando o futuro for completado com sucesso!
  }).catchError((error) {
    //*Registrando função que será executada quando o futuro for completado com erro.
  }).whenComplete(() {
    //*Registrando função que será executada SEMPRE(quando erro ou sucesso)!
  });
}
