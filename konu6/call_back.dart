void main() {
  final user = User(money: 100);
  user.calculateMoney((int result) {
    print(user.money);
  });
//  print(user.money);
}

class User {
  int money;
  User({required this.money});

  void calculateMoney(void Function(int data) onComplate) {
    money += 5;
    onComplate(money);
  }
}
