void main() {
  //müşterinin parası var mı yok mu kontrol edin.
  final int tunahan = 50;
  final int teemo = 10;
  final int nasus = 0;
  List<String> usernames = ["tunahan", "teemo", "nasus"];
  controlUserMoney(tunahan, 4);
  controlUserMoney(teemo, 2);
  controlUserMoney(nasus, 1);
  print(convertToDolar(tunahan, 18));
  print(convertToDolarOpsiyonel(teemo));
  print(convertToDolarOpsiyonel(tunahan, kur: 19));
  print(convertToDolarOpsiyonel2(money: teemo));
  print(sayHello("tunahan"));
  print(usernames.contains("nasus"));
  print(usernames.contains("fizz"));
}

void controlUserMoney(int userMoney, int minimum) {
  if (userMoney > minimum) {
    print("$userMoney parası var");
  } else {
    print("$userMoney parası yok");
  }
}

double convertToDolar(int money, int kur) {
  double sonuc = (money / kur);
  return sonuc;
}

double convertToDolarOpsiyonel(int money, {int kur = 18}) {
  double sonuc = money / kur;
  return sonuc;
}

double convertToDolarOpsiyonel2({required int money, int kur = 18}) {
  double sonuc = money / kur;
  return sonuc;
}

String sayHello(String user) {
  return "merhaba $user";
}
