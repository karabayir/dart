import '../konu4/class_extends_implements.dart';

void main() {
  final user = User(data: "data");
  final adminUser = AdminUser();
  print(user.data);
  removeAllUser(adminUser);
}

void removeAllUser<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({required this.data});
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}
