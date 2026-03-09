class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  Cat c = Cat(1, "Xu cà na", "Vàng", "Mèo méo meo mèo meo");

  print("ID: ${c.id}");
  print("Name: ${c.name}");
  print("Color: ${c.color}");
  print("Sound: ${c.sound}");
}