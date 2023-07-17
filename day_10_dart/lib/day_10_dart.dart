class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void makeNoise() {
    print('My position is ${this.x} and ${this.y}');
  }
}
class Shape{
  int length=0;
  int height=0;
  Shape({required int length,required int height}){
    this.length=length;
    this.height=height;
  }
  void showPosition(){
    print('My size is ${this.length} and ${this.height}');
  }
}
class Animal{
  Animal({required String name,required String type}){
    this.name=name;
    this.type=type;
  }
  String name='gg';
  String type='hhgg';

  void makeNoise(){
    print('Animal Roaring');
  }
}
void main() {
  final Drum = Sprite(10, 10);
  Drum.makeNoise();
  final animal= Animal(name:'Tom cat',type:'cat');
  animal.makeNoise();
}



