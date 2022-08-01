//EAGER SINGLETON
// tek bir instance oluşturuyorum. Her işlemi onun üzerinden yapılıyorum.
//Başka bir ProductConfig nesnesi oluşturmuyorum.
//private yapılarak diğer sınıflarda yeni bir ProductConfig oluşturulamaz.
//Sadece buradaki instance üzerinden işlem yapılabilir.
void main() {
  print(ProductConfigEager.instance.apiKey);
  print(ProductConfigEager._("xd").apiKey); // ._ private
}

class ProductConfigEager {
  static final ProductConfigEager instance = ProductConfigEager._("tk93");

  final String apiKey;

  ProductConfigEager._(this.apiKey);
}

// LAZY SINGLETON
// Burada ise başlangıçta instance değer almıyor. Çağırılınca geliyor.


