class Student {
  String name;
  List<double> scores;
  double get avg {
    if (scores.isEmpty) {
      return 0.0;
    }
    double total = scores.reduce((value, element) => value + element);
    return total / scores.length;
  }

  Student({required this.name, required this.scores});
}

double getClassAverage(List<Student> students) {
  double totalAvg = 0;
  for (Student student in students) {
    totalAvg += student.avg;
  }
  double classAverage = totalAvg / students.length;
  return classAverage;
}

Student? getBestStudent(List<Student> students) {
  if (students.isEmpty) {
    return null;
  }
  Student best = students.reduce(
    (currentBest, student) =>
        student.avg > currentBest.avg ? student : currentBest,
  );
  return best;
}

List<Student> getPassingStudents(List<Student> students) {
  return students.where((student) => student.avg >= 10.0).toList();
}

void main() {
  List<Student> students = [
    Student(name: 'Alice', scores: [12.0, 9.0, 10.0]),
    Student(name: 'Bob', scores: [10.0, 20.0, 20.0]),
    Student(name: 'Carol', scores: [15.0, 18.0, 19.0]),
  ];

  print('Class average: ${getClassAverage(students)}');
  print('Best student: ${getBestStudent(students)?.name}');
  print(
    'Passing students: '
    '${getPassingStudents(students).map((s) => s.name).toList()}',
  );
}
