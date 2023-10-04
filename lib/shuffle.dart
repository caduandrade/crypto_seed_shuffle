class Shuffle {

  Shuffle({required this.seedLength, required List<int> swappers})
      : swappers = List.of(swappers);

  final int seedLength;
  final List<int> swappers;

  List<int> execute() {
    // unshuffled key numbers
    List<int> keyNumbers = List.generate(seedLength, (index) => index+1);

    for(int i = 0 ; i < keyNumbers.length ; i++) {
      final int swapper = swappers.removeAt(0);
      final int keyNumber1 = keyNumbers[i];

      final int keyNumber2Index = (i+swapper)%keyNumbers.length;
      final int keyNumber2 = keyNumbers[keyNumber2Index];

      // swapping
      keyNumbers[i] = keyNumber2;
      keyNumbers[keyNumber2Index]= keyNumber1;

      // keeping circular swappers
      swappers.add(swapper);
    }

    return keyNumbers;
  }
}
