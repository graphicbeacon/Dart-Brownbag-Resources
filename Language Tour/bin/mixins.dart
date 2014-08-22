abstract class VIPPermissions {
  luxuryTreatment() => print('Your royal suite is ready!');
}

class Person {
  speak() => print('person is speaking');
}

// Saving our inheritance tree yet using VIPPermissions
// as a delta between the class Customer and its superclass Person
class Customer extends Person with VIPPermissions {
  String _name;
  Customer(this._name);
}

void main() {
  Customer customer = new Customer('Charles')..luxuryTreatment();
}