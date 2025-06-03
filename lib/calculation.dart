import 'package:life_expectancy/life.dart';

class Calculation {
  Life semih;
  Calculation(this.semih);

  double bill() {
    double result;

    result = 90 + semih.sport - semih.cigarette;
    result = result + (semih.size / semih.weight);
    semih.gender == Genders.female ? result = result + 3 : result;

    return result;
  }
}
