import 'dart:io';

import 'model.dart';

void main() {
  stdout.write(
      "*******************************************\nXow geldiniz \nZehmet olmasa sayta giriw ucun secim edin\n1 - istifadeci\n2 - qonaq kimi \n*******************************************\n");

  int? secim = int.tryParse(stdin.readLineSync().toString());
  List<Product> mehsul = [
    Product(model: "notbuk", name: "apple", price: 2000),
    Product(model: "telefon", name: "xiomi", price: 700),
    Product(model: "elektron saat", name: "samsung", price: 300),
    Product(model: "nauwnik", name: "oppo", price: 100),
    Product(model: "notbuk", name: "hp", price: 1568),
    Product(model: "telefon", name: "honor", price: 754),
    Product(model: "elektron saat", name: "huawei", price: 158),
    Product(model: "nauwnik", name: "apple", price: 300),
    Product(model: "notbuk", name: "msi", price: 2222),
    Product(model: "telefon", name: "htc", price: 456),
    Product(model: "elektron saat", name: "apple", price: 399),
    Product(model: "nauwnik", name: "samsung", price: 199),
    Product(model: "notbuk", name: "asus", price: 1799),
    Product(model: "telefon", name: "iphone", price: 1288),
    Product(model: "elektron saat", name: "oppo", price: 234),
    Product(model: "nauwnik", name: "huawei", price: 156),
  ];
  if (secim == 1) {
    stdout.write("login daxil edin ");
    String user = stdin.readLineSync() ?? "logini qeyd edin ";
    stdout.write("wifreni daxil edin : ");
    String password = stdin.readLineSync() ?? "zehmet olmasa wifreni qeyd edin";

    for (int i = 0; i < mehsul.length; i++) {
      stdout.writeln(mehsul[i].model +
          "\t" +
          mehsul[i].name +
          "\t" +
          mehsul[i].price.toString() +
          "\n");
    }

    int dovr = 0;

    while (true) {
      stdout.write(
          "Mehsulu secin :\n1 - notbuk\n2 - telefon\n3 - nauwnik\n4 - elektron saatlar : ");
      int Mehsulsecimi = int.tryParse(stdin.readLineSync().toString()) ?? 0;
      if (Mehsulsecimi == 1) {
        for (int i = 0; i < mehsul.length; i++) {
          if (i % 4 == 0) {
            stdout
                .writeln(mehsul[i].name + "\t\t" + mehsul[i].price.toString());
            ///////////////////////////////
            stdout.write(
                "Davam etmek isteyirsizse 1 , davam etmek istemirsizse 2  qeyd edin : ");
            int? DavamTamam = int.tryParse(stdin.readLineSync().toString());

            if (DavamTamam == 1) {
              stdout.write(
                  "Negd odeniw ucun 1 , kredit ile odeme ucun ise 2 yazin : ");
              int? odeniw = int.tryParse(stdin.readLineSync().toString());
              if (odeniw == 1) {
                stdout.write(
                    "Catdirilma ucun 1 , magazadan goturmek ucun 2 yazin : ");
                int? xidmet = int.tryParse(stdin.readLineSync().toString());
                if (xidmet == 1) {
                  print(
                      "mehsulun qiymetinin  uzerine 10 manat elave olunacaq \nMehsulun son qoymeti ${mehsul[i].price + 10} manat ");

                  break;
                } else if (xidmet == 2) {
                  print(
                      "Mehsulun qiymeti stabil qalir \nMehsulun qiymeti ${mehsul[i].price}");
                  break;
                } else {
                  print("xeta baw verdi zehmet olmasa tekrar yoxlayin");
                  break;
                }
              } else if (odeniw == 2) {
                stdout.write(
                    "Kartla odeniw birbawa ucun 1 ,taksitle odeniw ucun 2 secin");
                int? kredit = int.tryParse(stdin.readLineSync().toString());

                if (kredit == 1) {
                  print(
                      "Sizin odemeli oldugu mebleg ${mehsul[i].price.toString()} azn");
                  break;
                } else if (kredit == 2) {
                  stdout.write(
                      "Taksitle odemek ucun 3 bank var\n1)Birkart\n2)Tamkart\n3)Bolkart : ");
                  int? taksit = int.tryParse(stdin.readLineSync().toString());
                  switch (taksit) {
                    case 1:
                      stdout.writeln(
                          "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${mehsul[i].price ~/ 12} manat");
                      stdout.writeln(
                          "18 ay taksitle  ayda cemi ${mehsul[i].price ~/ 18} manat");
                      stdout.writeln(
                          "24 ay taksitle  ayda cemi ${mehsul[i].price ~/ 24} manat");
                      break;
                    case 2:
                      stdout.writeln(
                          "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${(mehsul[i].price * 25 ~/ 100) ~/ 12} manat");

                      break;

                    case 3:
                      stdout.writeln(
                          "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle ayda cem ${mehsul[i].price ~/ 3}");
                      stdout.writeln(
                          "6 ay taksitle ayda cem ${(mehsul[i].price + 10) ~/ 3}");

                      break;
                    default:
                      print("Xeta baw verdi tekrar daxil olun");
                      break;
                  }
                } else {
                  print("Xeta baw verdi zehmet olmasa tekrar edin ");
                  break;
                }
              }
            } else {
              stdout.writeln("Helelik Sagolun");
              break;
            }
          }
        }
        break;
      } else if (Mehsulsecimi == 2) {
        for (int i = 0; i < mehsul.length; i++) {
          if (i % 4 == 1) {
            stdout
                .writeln(mehsul[i].name + "\t\t" + mehsul[i].price.toString());

            stdout.write(
                "Davam etmek isteyirsizse 1 , davam etmek istemirsizse 2  qeyd edin : ");
            int? DavamTamam = int.tryParse(stdin.readLineSync().toString());

            if (DavamTamam == 1) {
              stdout.write(
                  "Negd odeniw ucun 1 , kredit ile odeme ucun ise 2 yazin : ");
              int? odeniw = int.tryParse(stdin.readLineSync().toString());
              if (odeniw == 1) {
                stdout.write(
                    "Catdirilma ucun 1 , magazadan goturmek ucun 2 yazin : ");
                int? xidmet = int.tryParse(stdin.readLineSync().toString());
                if (xidmet == 1) {
                  print(
                      "mehsulun qiymetinin  uzerine 10 manat elave olunacaq \nMehsulun son qoymeti ${mehsul[i].price + 10} manat ");
                  break;
                } else if (xidmet == 2) {
                  print(
                      "Mehsulun qiymeti stabil qalir \nMehsulun qiymeti ${mehsul[i].price}");
                  break;
                } else {
                  print("xeta baw verdi zehmet olmasa tekrar yoxlayin");
                  break;
                }
              } else if (odeniw == 2) {
                stdout.write(
                    "Kartla odeniw birbawa ucun 1 ,taksitle odeniw ucun 2 secin");
                int? kredit = int.tryParse(stdin.readLineSync().toString());

                if (kredit == 1) {
                  print(
                      "Sizin odemeli oldugu mebleg ${mehsul[i].price.toString()} azn");
                  break;
                } else if (kredit == 2) {
                  stdout.write(
                      "Taksitle odemek ucun 3 bank var\n1)Birkart\n2)Tamkart\n3)Bolkart : ");
                  int? taksit = int.tryParse(stdin.readLineSync().toString());
                  switch (taksit) {
                    case 1:
                      stdout.writeln(
                          "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${mehsul[i].price ~/ 12} manat");
                      stdout.writeln(
                          "18 ay taksitle  ayda cemi ${mehsul[i].price ~/ 18} manat");
                      stdout.writeln(
                          "24 ay taksitle  ayda cemi ${mehsul[i].price ~/ 24} manat");
                      break;
                    case 2:
                      stdout.writeln(
                          "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${(mehsul[i].price * 25 ~/ 100) ~/ 12} manat");

                      break;

                    case 3:
                      stdout.writeln(
                          "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle ayda cem ${mehsul[i].price ~/ 3}");
                      stdout.writeln(
                          "6 ay taksitle ayda cem ${(mehsul[i].price + 10) ~/ 3}");

                      break;
                    default:
                      print("Xeta baw verdi tekrar daxil olun");
                      break;
                  }
                } else {
                  print("Xeta baw verdi zehmet olmasa tekrar edin ");
                  break;
                }
              }
            } else {
              stdout.writeln("Helelik Sagolun");
              break;
            }
          }
        }
        break;
      } else if (Mehsulsecimi == 3) {
        for (int i = 0; i < mehsul.length; i++) {
          if (i % 4 == 2) {
            stdout
                .writeln(mehsul[i].name + "\t\t" + mehsul[i].price.toString());

            stdout.write(
                "Davam etmek isteyirsizse 1 , davam etmek istemirsizse 2  qeyd edin : ");
            int? DavamTamam = int.tryParse(stdin.readLineSync().toString());

            if (DavamTamam == 1) {
              stdout.write(
                  "Negd odeniw ucun 1 , kredit ile odeme ucun ise 2 yazin : ");
              int? odeniw = int.tryParse(stdin.readLineSync().toString());
              if (odeniw == 1) {
                stdout.write(
                    "Catdirilma ucun 1 , magazadan goturmek ucun 2 yazin : ");
                int? xidmet = int.tryParse(stdin.readLineSync().toString());
                if (xidmet == 1) {
                  print(
                      "mehsulun qiymetinin  uzerine 10 manat elave olunacaq \nMehsulun son qoymeti ${mehsul[i].price + 10} manat ");
                  break;
                } else if (xidmet == 2) {
                  print(
                      "Mehsulun qiymeti stabil qalir \nMehsulun qiymeti ${mehsul[i].price}");
                  break;
                } else {
                  print("xeta baw verdi zehmet olmasa tekrar yoxlayin");
                  break;
                }
              } else if (odeniw == 2) {
                stdout.write(
                    "Kartla odeniw birbawa ucun 1 ,taksitle odeniw ucun 2 secin");
                int? kredit = int.tryParse(stdin.readLineSync().toString());

                if (kredit == 1) {
                  print(
                      "Sizin odemeli oldugu mebleg ${mehsul[i].price.toString()} azn");
                  break;
                } else if (kredit == 2) {
                  stdout.write(
                      "Taksitle odemek ucun 3 bank var\n1)Birkart\n2)Tamkart\n3)Bolkart : ");
                  int? taksit = int.tryParse(stdin.readLineSync().toString());
                  switch (taksit) {
                    case 1:
                      stdout.writeln(
                          "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${mehsul[i].price ~/ 12} manat");
                      stdout.writeln(
                          "18 ay taksitle  ayda cemi ${mehsul[i].price ~/ 18} manat");
                      stdout.writeln(
                          "24 ay taksitle  ayda cemi ${mehsul[i].price ~/ 24} manat");
                      break;
                    case 2:
                      stdout.writeln(
                          "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${(mehsul[i].price * 25 ~/ 100) ~/ 12} manat");

                      break;

                    case 3:
                      stdout.writeln(
                          "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle ayda cem ${mehsul[i].price ~/ 3}");
                      stdout.writeln(
                          "6 ay taksitle ayda cem ${(mehsul[i].price + 10) ~/ 3}");

                      break;
                    default:
                      print("Xeta baw verdi tekrar daxil olun");
                      break;
                  }
                } else {
                  print("Xeta baw verdi zehmet olmasa tekrar edin ");
                  break;
                }
              }
            } else {
              stdout.writeln("Helelik Sagolun");
              break;
            }
          }
        }
        break;
      } else if (Mehsulsecimi == 4) {
        for (int i = 0; i < mehsul.length; i++) {
          if (i % 4 == 3) {
            stdout
                .writeln(mehsul[i].name + "\t\t" + mehsul[i].price.toString());

            stdout.write(
                "Davam etmek isteyirsizse 1 , davam etmek istemirsizse 2  qeyd edin : ");
            int? DavamTamam = int.tryParse(stdin.readLineSync().toString());

            if (DavamTamam == 1) {
              stdout.write(
                  "Negd odeniw ucun 1 , kredit ile odeme ucun ise 2 yazin : ");
              int? odeniw = int.tryParse(stdin.readLineSync().toString());
              if (odeniw == 1) {
                stdout.write(
                    "Catdirilma ucun 1 , magazadan goturmek ucun 2 yazin : ");
                int? xidmet = int.tryParse(stdin.readLineSync().toString());
                if (xidmet == 1) {
                  print(
                      "mehsulun qiymetinin  uzerine 10 manat elave olunacaq \nMehsulun son qoymeti ${mehsul[i].price + 10} manat ");
                } else if (xidmet == 2) {
                  print(
                      "Mehsulun qiymeti stabil qalir \nMehsulun qiymeti ${mehsul[i].price}");
                } else {
                  print("xeta baw verdi zehmet olmasa tekrar yoxlayin");
                  break;
                }
              } else if (odeniw == 2) {
                stdout.write(
                    "Kartla odeniw birbawa ucun 1 ,taksitle odeniw ucun 2 secin");
                int? kredit = int.tryParse(stdin.readLineSync().toString());

                if (kredit == 1) {
                  print(
                      "Sizin odemeli oldugu mebleg ${mehsul[i].price.toString()} azn");
                  break;
                } else if (kredit == 2) {
                  stdout.write(
                      "Taksitle odemek ucun 3 bank var\n1)Birkart\n2)Tamkart\n3)Bolkart : ");
                  int? taksit = int.tryParse(stdin.readLineSync().toString());
                  switch (taksit) {
                    case 1:
                      stdout.writeln(
                          "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${mehsul[i].price ~/ 12} manat");
                      stdout.writeln(
                          "18 ay taksitle  ayda cemi ${mehsul[i].price ~/ 18} manat");
                      stdout.writeln(
                          "24 ay taksitle  ayda cemi ${mehsul[i].price ~/ 24} manat");
                      break;
                    case 2:
                      stdout.writeln(
                          "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle  ayda cemi ${mehsul[i].price ~/ 3} manat");
                      stdout.writeln(
                          "6 ay taksitle  ayda cemi ${mehsul[i].price ~/ 6} manat");
                      stdout.writeln(
                          "12 ay taksitle  ayda cemi ${(mehsul[i].price * 25 ~/ 100) ~/ 12} manat");

                      break;

                    case 3:
                      stdout.writeln(
                          "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                      stdout.writeln(
                          "3 ay taksitle ayda cem ${mehsul[i].price ~/ 3}");
                      stdout.writeln(
                          "6 ay taksitle ayda cem ${(mehsul[i].price + 10) ~/ 3}");

                      break;
                    default:
                      print("Xeta baw verdi tekrar daxil olun");
                      break;
                  }
                } else {
                  print("Xeta baw verdi zehmet olmasa tekrar edin ");
                  break;
                }
              }
            } else {
              stdout.writeln("Helelik Sagolun");
              break;
            }
          }
        }
        break;
      } else {
        stdout.writeln("Zehmet olmasa mehsulu duzgun secin ");
        dovr++;
      }

      if (dovr == 3) {
        stdout.writeln("Xeta baw verdi , birazdan tekrar yoxlayin ");
        break;
      }
    }
  } else if (secim == 2) {
    for (int i = 0; i < mehsul.length; i++) {
      stdout.writeln(mehsul[i].model +
          "\t" +
          mehsul[i].name +
          "\t" +
          mehsul[i].price.toString() +
          "\n");
    }
  } else {
    stdout.writeln("Xeta baw verdi zehmet olmasa tekrar cehd edin ");
  }
}
