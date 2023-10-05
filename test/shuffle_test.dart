import 'package:crypto_seed_shuffle/shuffle.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Shuffle', () {
    test('1', () {
      Shuffle shuffle = Shuffle(seedLength: 4, swappers: [0, 0, 0]);
      List<int> list = shuffle.execute();
      expect([1, 2, 3, 4], list);
    });
    test('2', () {
      Shuffle shuffle = Shuffle(seedLength: 4, swappers: [1, 0, 1]);
      List<int> list = shuffle.execute();
      expect([3, 1, 4, 2], list);
    });
    test('3', () {
      Shuffle shuffle = Shuffle(seedLength: 4, swappers: [2, 1, 1, 2]);
      List<int> list = shuffle.execute();
      expect([3, 2, 4, 1], list);
    });
  });
}
