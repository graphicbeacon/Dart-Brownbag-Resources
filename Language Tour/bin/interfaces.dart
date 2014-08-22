// In Dart there is no interface keyword
// as classes are implicit interfaces
abstract class VIPPermissions {
  luxuryTreatment();
}

class Person {
  speak() => print('person is speaking');
}

// Implementing VIPPermissions as our interface here
class Customer extends Person implements VIPPermissions {
  String _name;
  Customer(this._name);
  
  luxuryTreatment() => print('Your royal suite is ready!');
}

void main() {
  Customer customer = new Customer('Charles')..luxuryTreatment();
}