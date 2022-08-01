void main() {
  int money = 0;
  money += 1;
  money++;
  print(money);

  const int ceviz = 100;
  double indirim = 2.5;
  int param = 100;

  void cevizAl() {
    param = param - (ceviz ~/ indirim);
  }

  cevizAl();
  print(param);
  print(param.isOdd);
  print(param.isEven);
}
