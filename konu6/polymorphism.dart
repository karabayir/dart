void main() {
  final Turk turk = Turk();
  final America america = America();
  turk.sayName();
  america.sayName();
}

mixin IUser {
  void sayName();
}

class Turk with IUser {
  @override
  void sayName() {
    print("merhaba");
  }
}

class America with IUser {
  @override
  void sayName() {
    print("hello");
  }
}
