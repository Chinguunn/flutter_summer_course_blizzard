class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;
Sprite(String name ){
  this.name=name;
}
  String getName(){
    return this.name;
  }

  void say(String name) {
    print('hello my name is $name');
  }
  void move(int x){
    this.x=x;
    print('i moved ${this.x}');
  }
}
void main() {
  final Dee = Sprite('Dee');
  Dee.say('Dee');
  Dee.move(100);
  print(Dee.getName());

  final Chik = Sprite('Chick');
  Chik.say('Chick');
  Chik.move(100);
  print(Chik.getName());
  final Ruby = Sprite('Ruby');
  Ruby.say('Ruby');
  Ruby.move(200);
  print(Ruby.getName());
}