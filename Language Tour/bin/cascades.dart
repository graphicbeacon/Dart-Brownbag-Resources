class Person {
  String name;
  int yearOfBirth;

  Person();

  speak() => print("$name($yearOfBirth) is speaking");
}

void main() {
  Person person = new Person()
        ..name = "Joe Bloggs" // using cascade (..) operator
        ..yearOfBirth = 1985
        ..speak();
}
