class Shape{
  int size=0;
 int length =0;
 int height =0;
 Shape({required int size,required int length, required int height}){
   this.size=size;
   this.length=length;
   this.height= height;

 }
 void showInfo(){
   print("i'm a shape");
 }
}
class Rectangle extends Shape{
  Rectangle({required super.size,required super.height,required super.length});
  @override
  void showInfo(){
    print("i'm a rectangle");
  }
}
void main(){
  final shape=Shape (size:3,length:10,height:30);
  shape.showInfo();
  final rectangle=Rectangle(size:3,length:20,height:40);
  rectangle.showInfo();
  final pig=Pig(name: 'gahai', type:'pig');
  pig.makeNoise();
  final horse=Horse(name: 'mori', type:'horse');
  horse.makeNoise();
  final cat=Cat(name: 'muur', type:'cat');
  cat.makeNoise();
}

class Animal {
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


class Pig extends Animal{
  Pig({required super.name, required super.type});

  @override
  void makeNoise(){
    print('ghhhh');
  }
}

class Cat extends Animal{
  Cat({required super.name, required super.type});

  @override
  void makeNoise(){
    print('meoww');
  }
}

class Horse extends Animal{
  Horse({required super.name, required super.type});

  @override
  void makeNoise(){
    print('inhhoo');
  }
}
