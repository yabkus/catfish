void main() {
  var economics = {
    "Kabiru": 70,
    "Chinenye": 80,
    "Chidi": 90,
    "Uchenna": 60,
  };
  print(economics);

  economics.addAll({
    "Aisha": 75,
    "Bola": 85,
  });
  print(economics);

  economics["Kabiru"] = 75;
  print(economics);

  economics.remove("Chidi");
  print(economics);

  economics.removeWhere((key, value) => key == "Chinenye");
  print(economics);

  if (economics.containsKey("Chidi")) {
    print("Chidi is in the list");
  } else {
    print("Chidi is not in the list");
  }

  var shoppingCart = ["Rice", "Beans", "Yam"];
  var prices = [100, 200, 300];
  var shoppingCartPrices = Map.fromIterables(shoppingCart, prices);
  print(shoppingCartPrices);

  Map<String, int> pricelist = Map.fromIterable(shoppingCart);
  print(pricelist);

  print(
      "The first item in the shopping cart is $shoppingCart[0] and it costs ${shoppingCartPrices[shoppingCart[0]]}");

  Map<String, String> states = {
    "Lagos": "Ikeja - ",
    "Ogun": "Abeokuta",
    "Oyo": "Ibadan",
    "Kano": "Kano",
    "Rivers": "Port Harcourt",
  };

  print(states);

  states.addAll({"Kwara": "Ilorin"});

  print(states);

  states.removeWhere((key, value) => key == "Rivers");

  print(states);

  states["Lagos"] = "Ikorodu";

  print(states);
}

class Car {
  String? name;
  String? model;
  String? color;
  int? year;
  Car(this.name, this.model, this.color, this.year);

  void drive() {
    print("The $color $name $model is moving");
  }
}

class Book {
  String? title;
  String? author;

  void read() {
    print("The book $title was published by $author");
  }
}
