import 'package:life_expectancy/life.dart';

class Calculation {
  Life semih;
  Calculation(this.semih);

  double bill() {
    double sonuc;

    sonuc = 90 + semih.sport - semih.cigarette;
    sonuc = sonuc + (semih.size / semih.weight);
    semih.gender == Genders.female ? sonuc = sonuc + 3 : sonuc;

    return sonuc;
  }
}
