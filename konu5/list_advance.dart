void main() {
  final carItems = [
    CarModel(model: Models.BMW, name: "bmw 4.20i", price: 650.000),
    CarModel(model: Models.FIAT, name: "Punto", price: 150.000),
    CarModel(model: Models.MERCEDES, name: "E 250", price: 250.000),
    CarModel(model: Models.OPEL, name: "Corsa", price: 350.000),
    CarModel(model: Models.TOYOTA, name: "Corolla", price: 500.000, isTwoHand: false),
  ];

  final result = carItems.where((element) => element.isTwoHand == true).length;
  print(result);
  final newModel = CarModel(model: Models.OPEL, name: "Corsa", price: 350.000);
  final isThere = carItems.contains(newModel);
  print(isThere); // referans tipinden dolayı false verir.
}

// Arabalar sınıfı var.
// Arabaların modeli ismi parası kesin olacak.
// Şehir olmayacak.
// 2.el durumu eğer müşteri söylemezse her ürün 2.el kabul edilecek.
// 5 tane araba olacak.
// Bu arabaların kaç tanesi 2.el ?
// Yeni gelen arabadan bizde var mıydı?

class CarModel {
  final Models model;
  final String name;
  final double price;
  String? city;
  bool isTwoHand;

  CarModel({required this.model, required this.name, required this.price, this.city, this.isTwoHand = true});
}

enum Models { BMW, FIAT, TOYOTA, OPEL, MERCEDES }
