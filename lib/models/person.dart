class Person {
  String name;
  DateTime? birthDate;

  int? get birthYear => birthDate?.year;
  String? get birthday => '${birthDate!.month}/${birthDate!.day}/${birthDate!.year}';
  int? get age => DateTime.now().difference(birthDate!).inDays ~/ 365;

  Person({
    required this.name,
    this.birthDate,
  });
}
