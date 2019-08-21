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
  Pug pug = new Pug('Puggo-che-eredita', 22);
  print(pug.name);
  print(pug.age);

  //chiamo i metodi
  d.bark();
  pug.bark();
  //chiamo i metodi statici
  Dog.bark_static();
  Pug.bark_static();
  Cane c = new Cane('Frank', 2, CurrentState.eating);
  print(c.state);
  print(c.state == CurrentState.eating); //Prints 'true'

  //=====================
  var obj = new Car('engine1');
  var motore = obj.engine;
  print('motore: ${motore}');
  obj.disp();
  var obj_2 = new Car.namedConstructor('NaMed EnGine');

  //=======================

  Student student_1 = new Student();
  student_1.student_name = 'carlo';
  print(student_1.student_name);

  student_1.student_age = 6;
}

//setta gli stati della classe va dichiarato fuori
enum CurrentState { sleeping, barking, eating, walking }

class Cane {
  //proprieta della mia classe
  String name;
  int age;
  CurrentState state;

  Cane(this.name, this.age, this.state);
}

class Dog {
  //proprieta della mia classe
  String name;
  int age;

  // Dog(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  //in alternativa al costruttore qua sopra, va bene anche scrivere cosi
  Dog(this.name, this.age);

  //in generale o istanzio nel costruttore direttamente le variabili, oppure le setto quando istanzio il nuovo oggetto.

  //costruttore nominale
  Dog.newBorn(String name, int age) {
    // name = 'Doggy';
    // age = 0;
    this.name = name;
    this.age = age;
  }
  static bark_static() {
    print('Bow Wow static');
  }

  bark() {
    print('Bow Wow');
  }

  //metodo privato
  _hiddenMethod() {
    print('I can only be called internally!');
  }
}

//classe che eredita le proprieta di Dog
class Pug extends Dog {
  Pug(String name, int age) : super(name, age);

  //analogo al costruttore nominale
  Pug.small(String name, int age) : this(name, 1);

  //sovrascrivo metodo della classe parent
  @override
  static bark_static() {
    print('meow static');
  }

  @override
  bark() {
    print('meow');
  }
}

class Car {
  //field, cioe le variabili che dichiaro
  String engine = "E1001";
  //constructor
  Car(this.engine);
  //named constructor
  Car.namedConstructor(String engine) {
    print('The engine is ${engine} (with named constructor)');
  }
  //function, metodi

  void disp() {
    print(engine);
  }
}

class Student {
  String name;
  int age;
  //con i getter e setter riesco ad accedere alle proprieta di una classe anche se esse sono private
  //i setter non ritornano niente (da qui void) e sono funzione di un parametro, i getter non sono funzione di niente e ritornano un valore
  void set student_name(String name) {
    this.name = name;
  }

  String get student_name {
    return name;
  }

  //analogo con age
  void set student_age(int age) {
    if (age <= 5) {
      print('age should be greater than 5');
    } else {
      this.age = age;
      print(age);
    }
  }

  int get student_age {
    return age;
  }
}
