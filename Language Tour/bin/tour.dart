class Person {
  String _name; // preceding underscore makes field private
  int _yearOfBirth;
  int _nationality;
  
  // Shorthand constructors with optinal named parameter
  Person(this._name, this._yearOfBirth, {nationality: 'unknown'}){
      if(nationality != 'unknown') _nationality = nationality; 
  }
  
  // Named constructor with optional positional parameter
  // as the first argument
  Person.withDefaults([int salary= 0]) : this('No name', 1768);

  Person operator +(Person other) {
    return new Person("$name and ${other.name}", 9999);
  }

  // One line functions
  speak() => print("$_name is speaking");

  String get name => _name;
         set name(String value) => _name = value;
}

void main() { // You would initialise your application in here
  Person john = new Person('John', 1978, nationality: 'UK');
         john.speak();

  // Creating object from named constructor
  Person defaultPerson = new Person.withDefaults();
         defaultPerson.speak();
  
  Person people = new Person("Jane Doe", 1987) + john;
         people.speak();  
}