void main() async {
  print("object 1");
  // Proses secara async yg dimana dia akan dijalankan setelah 3 detik berikutnya
  Future.delayed(Duration(seconds: 3), () {
    print("object 2");
  });

  // Handling Future #1
  var future = Future.delayed(Duration(seconds: 1), () => "BSI");
  future.then((value) {
    print(value);
  }).catchError((e) {
    print(e);
  }).whenComplete(() => print("Done"));

  // Handling Future #2
  try {
    var value = await future;
    print(value);
  } catch (e) {
    print(e);
  } finally {
    print("Done");
  }

  print("object 3");

  // Handling Streams #1
  var streams = Donwloader().byte();
  streams.forEach((element) async {
    print(element);
  });

  // Handling Streams #2
  // try {
  //   await for (final stream in streams) {
  //     print(stream);
  //   }
  // } catch (e) {
  //   print(e);
  // }
}

class Donwloader {
  void download(String url) async {
    try {} catch (e) {}
  }

  Stream<int> byte() async* {
    for (var i = 0; i < 100; i++) {
      yield i;
    }
  }
}
