class SebhaModel {
  final List<String> azkar;
  final int targetPerPhrase;

  int currentIndex;
  int counter;

  SebhaModel({
    required this.azkar,
    this.targetPerPhrase = 33,
    this.currentIndex = 0,
    this.counter = 0,
  });

  String get currentText => azkar[currentIndex];

  /// Returns true when a full cycle of all adhkar is completed.
  bool increment() {
    counter++;

    if (counter >= targetPerPhrase) {
      counter = 0;
      if (currentIndex < azkar.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
        return true;
      }
    }
    return false;
  }
}
