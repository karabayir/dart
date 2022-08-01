void main() {
  final int money = 15;
  String username = "tunahan";
  print(money.toString() + username); // elma ile armut toplanmaz. Aynı olmalıdır.

  // bir mağazaya isim verilecek
  // örnek isimler toplanır (teemo,nasus,fizz,zilean,tk,x)
  // mağaza uzunluğu iki harf ya da daha az olanları da görmek ister.

  final String teemo = "teemo";
  final String nasus = "nasus";
  final String fizz = "fizz";
  final String zilean = "zilean";
  final String tk = "tk";
  final String x = "x";
  final int uzunluk = 2;
  String sonuc = " ";

  if (teemo.length <= uzunluk) {
    sonuc += teemo + " ";
  }
  if (nasus.length <= uzunluk) {
    sonuc += nasus + " ";
  }
  if (fizz.length <= uzunluk) {
    sonuc += fizz + " ";
  }
  if (zilean.length <= uzunluk) {
    sonuc += zilean + " ";
  }
  if (tk.length <= uzunluk) {
    sonuc += tk + " ";
  }
  if (x.length <= uzunluk) {
    sonuc += x + " ";
  }

  if (sonuc.isEmpty) {
    print("istenilen nitelikte isim bulunamadı");
  } else {
    print(sonuc);
  }
}
