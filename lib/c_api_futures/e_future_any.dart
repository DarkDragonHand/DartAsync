void main() {
  var future1 = Future.delayed(Duration(seconds: 2), () => 'future 1');
  var future2 = Future.delayed(Duration(seconds: 1), () => 'future 2');
  var future3 = Future.delayed(Duration(seconds: 3), () => 'future 3');
  var future4 = Future.delayed(Duration(milliseconds: 200), () => 'future 4');
  var future5 = Future.delayed(Duration(milliseconds: 100), () => Future.error('future 5'));

  Future.any([future1, future2, future3, future4, future5])
  .then(print)
  .catchError(print);
}