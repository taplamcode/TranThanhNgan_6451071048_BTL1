class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void main() {
  Laptop l1 = Laptop(1, "Lenovo", 8);
  Laptop l2 = Laptop(2, "Dell", 16);
  Laptop l3 = Laptop(3, "Asus", 32);

  print("ID: ${l1.id}, Name: ${l1.name}, RAM: ${l1.ram}GB");
  print("ID: ${l2.id}, Name: ${l2.name}, RAM: ${l2.ram}GB");
  print("ID: ${l3.id}, Name: ${l3.name}, RAM: ${l3.ram}GB");
}