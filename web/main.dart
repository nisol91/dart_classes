import 'dart:html';

void main() {
  querySelector('#output').text = 'Your Dart app is running!!!!?????';
  querySelector('.clicca').onClick.listen((event) => print('click!'));

  //nuovo oggetto cane con nome ed eta
  Dog d = new Dog('Duffy', 2);
  print(d.name);
  print(d.age);
  Dog newborn = new Dog.newBorn('Piccolo', 0);
  print(newborn.name);
  print(newborn.age);
}

class Dog {
  String name;
  int age;

  // Dog(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  //in alternativa al costruttore qua sopra, va bene anche scrivere cosi
  Dog(this.name, this.age);

  //costruttore nominale
  Dog.newBorn(String name, int age) {
    // name = 'Doggy';
    // age = 0;
    this.name = name;
    this.age = age;
  }
}
