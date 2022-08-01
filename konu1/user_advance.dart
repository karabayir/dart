void main() {
  final String username = "Tunahan";
  var bankMoney = 100; //değiştirilebilir
  final int bankMoney1 = 100; //değiştirilemez.
  const int bankMoney2 = 100;
  var username1 = "Tunahan1";

  bankMoney += 10; // hata vermez.
  // bankMoney1 + =10; final tanımlamadan dolayı hata verir.
  // bankMoney2 += 10; const tanımlamadan dolayı hata verir. final == const

  // ---------------------

  // Bank name = "TK Bank"
  // bank user1 = "bank1muteri"
  // bank1 müsteriye dokunulamaz.
  // bank user 1 in parası 100.00
  // yeni bir müsteri gelecek adi bank2musteri
  // yeni bankaya gelenden bankuser1 in parasını cikartip ekrana gösterelim.

  const String bankNameSpecial = "TK Bank";

  const String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 müsteri";
  const int user2Money = 500;

  print("${user2Money - user1Money.toInt()}");

  //---------------------------

  // 100 kişi kapasiteli bir halısaha var.
  // Saat 10'da 20 kisilik müsteri1 mac yapacak.20 kişi kesin gelecek.
  // Saat 10'da müsteri2 gelip 50 kisilik yer ayarlayacak.
  // bu islem sonucunda kalan halisaha kapasitesi kaçtır?

  int halisahaKapasitesi = 100;
  const int musteri1Sayisi = 20;
  int musteri2Sayisi = 50;
  halisahaKapasitesi -= musteri1Sayisi + musteri2Sayisi;
  print("Kalan halısaha kapasitesi : $halisahaKapasitesi");
}
