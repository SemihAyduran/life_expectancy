class Life {
  Genders? seciliCinsiyet;
  double icilenSigara;
  double yapilanSpor;
  int boy;
  int kilo;

  Life({
    this.boy = 0,
    this.kilo = 0,
    this.icilenSigara = 0,
    this.seciliCinsiyet,
    this.yapilanSpor = 0,
  });

  @override
  String toString() => "seciliCinsiyet: $seciliCinsiyet";
}

enum Genders { male, female }
