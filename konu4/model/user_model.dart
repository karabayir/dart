class User {
  //ilk olarak özellikler tanımlanır.

  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;
  late String _id; // user sınıfını farklı dosyaya alarak erişmini engelledik.

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.age = age;
    this.money = money;
    this.city = city;
    _id = id;
    userCode = city ?? "istanbul" + name;
  }

  String getId() {
    return this._id;
  }

  void setId(String id) {
    this._id = id;
  }

  bool get isEmptyId => _id.isEmpty; //computed value -> çağırıldığında hesaplanır.
}
