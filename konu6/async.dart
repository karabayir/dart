Future<void> main() async {
  print("a");
  // 5 sn bekle sonra gel hicbir müsteri alma

  Stream<int> bankMoney = Stream.empty();
  bankMoney.listen((event) {
    print(event);
  });

  await Future.delayed(Duration(seconds: 2)); //bitirmeden aşağıya geçmez.
  print("b");

  print("mrb");
  Future.delayed(Duration(seconds: 3)).whenComplete(() => print("mrb3"));
  print("mrb2");
}

Stream<int> dataAddMoney(int retryCont, int money) async* {
  int _localRetry = 0;

  while (_localRetry < retryCont) {
    _localRetry++;
    yield money += 5;
  }
}

// zaman alan işemler için kullanılır.
// thread'i durdurup işini yapar kaldığı yerden devam eder.
