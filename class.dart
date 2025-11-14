class Person {
  String? name, sex;
  int? age;

  //Constructor
  Person(this.name, this.sex, this.age);

  //Method
  void showData() {
    print('Name = $name');
    print('Sex = $sex');
    print('Age = $age');
  }
}

void main() {
  Person p1 = Person("John", "Male", 44);
  p1.showData();

  Person p2 = Person("Mary", "Female", 21);
  p2.showData();
}
