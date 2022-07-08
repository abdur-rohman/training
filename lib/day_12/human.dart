class Human {
  String name;
  final int age;
  String _signature = "";
  String _address = "";
  String get address => _address;
  set address(String address) {
    print("address: $address");
    _address = address;
  }

  void updateName(String name) {
    print("new name: $name");
    this.name = name;
  }

  void setSignature(String signature) {
    print("signature: $name");
    _signature = signature;
  }

  Human({
    required this.name,
    required this.age,
  });

  void bernafas() {
    if (age > 60) {
      print("Hanya bisa menahan nafas selama 10 menit");
    } else {
      print("Hanya bisa menahan nafas selama 20 menit");
    }
  }
}

class ServiceBooking {
  final bool isVip;
  final String plateNumber, queueNumber;

  ServiceBooking({
    required this.isVip,
    required this.plateNumber,
    required this.queueNumber,
  });
}

bool isRegisteredPlateNumber(String plateNumber) {
  return registeredServiceBookings
      .where((element) =>
          element.plateNumber.toLowerCase().trim() ==
          plateNumber.toLowerCase().trim())
      .isNotEmpty;
}

final registeredServiceBookings = <ServiceBooking>[];
