class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  late bool hintShow;
  CharModel({
    this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,
  });
  getCurrentValue() {
    if (correctValue != null) {
      return currentValue;
    }
  }
  clearValue(){
    currentIndex=null;
    currentValue=null;
  }
}
