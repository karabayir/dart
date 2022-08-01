void main() {
  IDatabase database = Sql();
  database.write();
  database = Mongo(); // LSP
  database.write();
}

// Single Responsibility  (S)

class UserManager {
  // Bir sınıf sadece kendi amacına hizmet etmeli.
  String name;
  UserManager({required this.name});
  void changeUserName(String name) {
    this.name = name;
  }
}

// Open Close Principle   (O)

//Sınflar kendi içerisinde değiştirilmemeli. Ancak türetmelerle büyüyebilmeli.
//Sınıfı değiştirmeden extends ile genişletiyorum.

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  final String categoryName;
  ProductCategories(super.name, super.money, this.categoryName);
}

// Liskov Substitution Principle (LSP)  (L)

// Aynı arayüz ya da soyut sınıftan türeyen sınıflar birbirlerinin yerine geçebilir.
// IDatabase hem Sql hem de Mongo sınıfının referansını tutabilir.

abstract class IDatabase {
  void write();
}

class Sql extends IDatabase {
  @override
  void write() {
    print("sql write");
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    print("mongo write");
  }
}

// Interface Segregation Principle  (I)
// Interface lerin parçalanması prensipleri

abstract class IUserOperation with IUserLocatipn, ILanguage {
  void write();
  void read();
  void delete();
  //void locationChange();
  //void languageChange();
}

abstract class IUserLocatipn {
  void locationChange();
}

abstract class ILanguage {
  void languageChange();
}

//Dependency Inversion Principle  (D)
// Ana sınıflarda alt sınıfların bağımlıklıkları olmamalıdır.

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {}
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
}
