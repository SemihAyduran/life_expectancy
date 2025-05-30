class Life {
  Genders? gender;
  double cigarette;
  double sport;
  int size;
  int weight;

  Life({
    this.size = 0,
    this.weight = 0,
    this.cigarette = 0,
    this.gender,
    this.sport = 0,
  });

  @override
  String toString() => "$gender";
}

enum Genders { male, female }
