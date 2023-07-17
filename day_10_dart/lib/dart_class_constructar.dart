class Wheel {
  int numberOfWheels = 0;
  Wheel({required int numberOfWheels}) {
    this.numberOfWheels = numberOfWheels;
  }
}
// ----------------------
class Car {
  String name = 'car';
  Wheel dugui = Wheel(numberOfWheels: 4);
  Car({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui = dugui;
  }
}

// -----------------------
class Door{
  int numberOfDoors=0;
 Door({required int numberOfDoors}){
   this.numberOfDoors=numberOfDoors;
 }
}
class Floor{
  int numberOfFloors=0;
  Floor({required int numberOfFloors}){
    this.numberOfFloors=numberOfFloors;
  }
}
class Building{
  String name='';
  Floor floors=Floor(numberOfFloors: 3);
  Door doors=Door(numberOfDoors: 4);
  building({required String name,required Floor floors,required Door doors})
}

void main() {
  final lamborginiDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: 'lamborgini', dugui: lamborginiDugui);
  final mn floors
}
