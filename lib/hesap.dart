import 'package:life_expectancy/life.dart';

class Hesap {
  Life semih;
  Hesap(this.semih);

  double hesaplama() {
    double sonuc;

    sonuc = 90 + semih.yapilanSpor - semih.icilenSigara;
    sonuc = sonuc + (semih.boy / semih.kilo);
    semih.seciliCinsiyet == Genders.female
        ? sonuc = sonuc + 3
        : sonuc;

    return sonuc;
  }
}
