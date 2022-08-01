import 'model/user_model.dart';

void main() {
  User user1 = User("tunahan", 2990, age: 29, city: "Kocaeli", id: "123");
  User user2 = User("teemo", 1000, id: "321");
  if (user1.isEmptyId != true && user1.getId() == "123") {
    print("${user1.name} indirim kazandı.");
  }
  //user1._id; user sınıfını farklı dosyaya aldık.  _id artık görülmez.
}

// ad zorunlu,yaş,para zorunlu,şehir
// şehir yoksa istanbul yaz
// id değişkeninine sadece sınıfından erişilsin.

// class User {
//   //ilk olarak özellikler tanımlanır.

//   late final String name;
//   late final int money;
//   late final int? age;
//   late final String? city;
//   late final String userCode;
//   late final String _id;

//   User(String name, int money, {required String id, int? age, String? city}) {
//     this.name = name;
//     this.age = age;
//     this.money = money;
//     this.city = city;
//     _id = id;
//     userCode = city ?? "istanbul" + name;
//   }
// }

class User2 {
  final String name;
  final int money;
  final int? age;
  final String? city;
  late final userCode;

  //User2(String name, int money, {int? age, String? city}) {}
  User2(this.name, this.money, {this.age, this.city}) {
    userCode = name + (city ?? "istanbul");
  }
}
