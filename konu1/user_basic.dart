void main() {
  // müşterinin adını tut
  // müşterinin parasını öğren
  // müşteriye merhaba diyip parasını söyle

  String username = "Tunahan";
  int userMoney = 700;
  int bonus = 5;
  print("Merhaba $username" + " $userMoney");
  //userMoney = userMoney + bonus;
  userMoney += bonus;
  print("Hoşgeldin bonuslu güncel tutarınız : " + "$userMoney");
}
