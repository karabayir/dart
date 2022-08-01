void main() {
  List<int> moneys = [100, 200, 500];
  final List<int> newMoneys = [100, 200, 500];
  print(moneys[1]);
  moneys.sort();
  moneys.add(250);
  moneys.insert(2, 300);
  print(moneys);
  newMoneys.add(400); //referans tipinde old. oynalamalar yapabilirim.
  newMoneys.clear();
  print(newMoneys);
  //newMoneys = moneys; referans adresini değiştiremem (Final type). Ancak içine dokunabilirim.

  // customers 100 30 40 60
  // 35 tl den büyük olanlara kredi verebiliriz yaz.
  // 35 tl de küçük olanlara uygun değil yaz.

  List<int> customers = [100, 30, 40, 60];

  for (int i = 0; i < customers.length; i++) {
    if (customers[i] > 35) {
      print("${customers[i]} ->  kredi hazır");
    } else {
      print("${customers[i]} -> kredi olumsuz");
    }
  }
}
