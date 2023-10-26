import 'dart:io';

void main() {
  do {
    print("İşlem tipini seçiniz:");
    print("1- Toplama");
    print("2- Çıkarma");
    print("3- Çarpma");
    print("4- Bölme");
    print("0- Çıkış");

    int secilenIslem = int.parse(stdin.readLineSync()!);

    if (secilenIslem == 0) {
      print("Programdan çıkılıyor.");
      break;
    } else if (secilenIslem < 1 || secilenIslem > 4) {
      print("Geçersiz işlem tipi.");
      continue;
    }

    print("Parametreleri giriniz:");

    print("İlk sayı:");
    double sayi1 = double.parse(stdin.readLineSync()!);

    print("İkinci sayı:");
    double sayi2 = double.parse(stdin.readLineSync()!);

    switch (secilenIslem) {
      case 1:
        toplama(sayi1, sayi2);
        break;
      case 2:
        cikarma(sayi1, sayi2);
        break;
      case 3:
        carpma(sayi1, sayi2);
        break;
      case 4:
        bolme(sayi1, sayi2);
        break;
    }
  } while (true);
}

void toplama(double sayi1, double sayi2) {
  double sonuc = sayi1 + sayi2;
  print("Toplama Sonucu: $sonuc");
}

void cikarma(double sayi1, double sayi2) {
  double sonuc = sayi1 - sayi2;
  print("Çıkarma Sonucu: $sonuc");
}

void carpma(double sayi1, double sayi2) {
  double sonuc = sayi1 * sayi2;
  print("Çarpma Sonucu: $sonuc");
}

void bolme(double sayi1, double sayi2) {
  if (sayi2 != 0) {
    double sonuc = sayi1 / sayi2;
    print("Bölme Sonucu: $sonuc");
  } else {
    print("Bölme işlemi sıfıra bölünemez.");
  }
}

