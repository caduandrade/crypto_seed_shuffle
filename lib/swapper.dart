import 'package:flutter/widgets.dart';

class Swapper {
  static List<int> fromCharacters(String str) {
    List<int> list = [];
    for (String char in str.characters) {
      int? swapper = int.tryParse(char);
      if (swapper != null) {
        list.add(swapper);
      }
    }
    return list;
  }
}
