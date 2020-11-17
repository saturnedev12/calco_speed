import 'dart:math';

void main(List<String> args) {
  var rand = new Random();

  List generate() {
    List<int> nombres = [];
    for (var i = 1; i <= 6; i++) {
      nombres.add(Random().nextInt(20));
    }
    return nombres;
  }

  List n = generate();
  print("$n");
}
