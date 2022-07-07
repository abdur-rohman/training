import 'package:cli/oop.dart';

void main() {
  // OOP
  AbstractPerson normalPerson = Person("normal");
  print(normalPerson.getFullName());

  AbstractPerson president = PriorityPerson();
  print(president.getFullName());

  // Polymorphism
  Mamalia mamalia = Mamalia();
  mamalia.bernafas();
  Human human = Human();
  human.bernafas();
}

// Classes
class Restaurant {
  final String image, name, address; // Attributes
  final double lat, long, rating; // Attributes

  Restaurant({
    required this.image,
    required this.name,
    this.address = "",
    this.lat = 0.0,
    this.long = 0.0,
    this.rating = 0.0,
  });

  // Methods
  String ratingValue() {
    var value = "Common";
    if (rating >= 4.0) {
      value = "Great";
    }

    return value;
  }
}
