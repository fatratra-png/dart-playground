class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  final people = [
    Person('Alice', 30),
    Person('Bob', 25),
    Person('Charlie', 25),
    Person('Dave', 30),
    Person('Eve', 22),
  ];

  people.sort((a, b) {
    final byAge = a.age.compareTo(b.age);
    return byAge != 0 ? byAge : a.name.compareTo(b.name);
  });

  print('Sorted by age, then name:');
  people.forEach((p) => print('  ${p.name} (${p.age})'));
}