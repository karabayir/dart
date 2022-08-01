void main() {
  // adı tunahan parası 100

  Map<String, int> user = {"tunahan": 100, "teemo": 50};
  print("tunahan'ın parası: ${user["tunahan"]}");

  for (var item in user.keys) {
    print("${item} parası ${user[item]}");
  }

  // banka müşterisinin birden fazla hesabı olabiir.
  // tunahan 3 hesabı var 100, 200, 300
  // teemo 2 hesabı var 50,70
  // nasus 1 hesap 60
  // müşterilere bak herhangi bir hesabında 70 üstü varsa kredi hazır.

  Map<String, List<int>> tbank = {
    "tunahan": [100, 200, 300],
    "teemo": [50, 70],
    "nasus": [60]
  };
  tbank["udyr"] = [90, 150]; //referans tipinde içiyle oynayabilirim.

  for (var musteriler in tbank.keys) {
    //banka müşterileri
    for (var hesaplar in tbank[musteriler]!) {
      //! işareti = null gelebilir
      // banka müşterilerinin hesapları
      if (hesaplar > 70) {
        print("$musteriler kredin hazır");
        break; // Birden fazla 70 üstü varsa birden fazla kredin hazır yazmasın.
      }
    }
  }
  print("-------------------------------");

  // banka müşterilerinin toplam varlığı

  for (var musteri in tbank.keys) {
    int result = 0;
    for (var hesap in tbank[musteri]!) {
      result += hesap;
    }
    print("$musteri toplam: $result");
  }
}
