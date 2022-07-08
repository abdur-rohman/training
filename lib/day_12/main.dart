import 'dart:math';

import 'package:cli/day_12/human.dart';

void main() {
  var human = Human(name: "", age: 0);
  human.address = "Jalan kaliurang";
  human.updateName("Blablabla");
  print(human.name);

  var plateNumber = "ab 1234 ab";
  var isRegistered = isRegisteredPlateNumber(plateNumber);
  print("isRegistered: $isRegistered");

  if (isRegistered) {
  } else {
    var isVip = Random().nextInt(2) == 1;
    var number = registeredServiceBookings.length + 1;
    var queueNumber = "SQB-$number";
    var newServiceBooking = ServiceBooking(
      isVip: isVip,
      plateNumber: plateNumber.toUpperCase().trim(),
      queueNumber: queueNumber,
    );
    registeredServiceBookings.add(newServiceBooking);

    var isRegistered = isRegisteredPlateNumber(plateNumber);
    print(
      "Sukses: QN: ${newServiceBooking.queueNumber}, PN: ${newServiceBooking.plateNumber}",
    );
  }
}
