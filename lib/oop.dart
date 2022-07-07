class Person implements AbstractPerson {
  String _name;

  // Getter
  String get name {
    print("Name $_name");
    return _name;
  }

  // Setter
  set name(String name) {
    print("Name $name");
    _name = name;
  }

  Person(this._name);

  @override
  String getFullName() {
    return _name;
  }
}

class PriorityPerson implements AbstractPerson {
  @override
  String getFullName() {
    return "Number 1";
  }
}

abstract class AbstractPerson {
  // Contract
  String getFullName();
}

class Parent {
  final String name;
  final properties = <String>["Tanah", "Rumah", "Kios", "Apartement"];

  Parent(this.name);
}

class Child extends Parent {
  Child(super.name);

  List<String> childProperties() {
    return [...properties, "Kos - kosan"];
  }
}

class Mamalia {
  void bernafas() {
    print("Bernafas menggunakan paru");
  }

  void melahirkan() {
    print("Melahirkan bukan bertelur");
  }
}

class Human extends Mamalia {
  @override // Mengantikan
  void bernafas() {
    super.bernafas();
    print("Mampu menahan nafas selama 20 menit");
  }

  void bekerja() {
    print("kerja terus");
  }
}

abstract class A {
  void a();
}

abstract class C {
  void c();
}

abstract class E {
  void e();
}

abstract class B extends E implements A, C {}

class Service {
  final _time = 17;

  String get timer {
    if (_time > 15) return "+${_time - 15}";
    return "$_time";
  }
}
