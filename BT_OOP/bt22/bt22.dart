class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  House h1 = House(1, "Topaz Home", 4500000);
  House h2 = House(2, "Ocean park", 9000000);
  House h3 = House(3, "Vinhomes", 15000000);

  List<House> houses = [h1, h2, h3];

  for (House h in houses) {
    print("ID: ${h.id}, Name: ${h.name}, Price: ${h.price}");
  }
}