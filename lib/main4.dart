void main() {
  //List
  //Creating a List
  //Displaying List Data
  //Getting length of list using length property
  //Spread operators
  //How to manipulate list

  //Map
  //Creating a Map
  //Displaying Map Data
  //How to manipulate map

  List<String> food = ["Rice", "Beans", "Yam", "Plantain", "Garri"];
  List<int> numbers = [1, 2, 3, 4, 5];
  List<double> numberDecimal = [1.0, 2.0, 3.0, 4.0, 5.0];
  List<int> spreadOperator = [...numbers, 6, 7, 8];

  print("Food: $food");
  print("Numbers: $numbers");
  print("Number Decimal: $numberDecimal");

  print("Index of Food ${food[4]}");

  food.add("Egusi");
  print("Updated food: $food");

  food.addAll(["Ewedu", "Amala"]);
  print("Updated food: $food");

  food[0] = "Spaghetti";
  print("Updated food: $food");

  food.remove("Ewedu");
  print("Updated food: $food");

  food.removeAt(1);
  print("Updated food: $food");

  food.removeLast();
  print("Updated food: $food");

  if (food.contains("Beans")) {
    print("Spaghetti is in the list");
  } else {
    print("Spaghetti is not in the list");
  }

  int sum = numbers.reduce((value, element) => value + element);
  int sum1 = numbers.reduce(
    (value, element) {
      return value + element;
    },
  );
  print("Sum of numbers: $sum");
  print("Sum of numbers: $sum1");
  print(food.length);

  String lastItem = food[food.length - 1];
  print("Last item: $lastItem");

  print("spreadOperator: $spreadOperator");

  print("MAP STARTS HERE");

  var stateMap = {
    "Lagos": "Ikeja",
    "Ogun": "Abeokuta",
    "Oyo": "Ibadan",
    "Osun": "Osogbo",
    "Ondo": "Akure",
  };

  Map<String, String> bioData = {
    "name": "John Doe",
    "age": "30",
    "isEmployed": "true",
    "height": "1.78",
    "state": "Lagos",
  };

  print("State Map: $stateMap");
  print("Bio Data: $bioData");

  print("State Map Lagos: ${stateMap["Ondo"]}");

  stateMap["Lagos"] = "Minna";
  print("Updated State Map: $stateMap");

  stateMap.addAll({"Kano": "Kano"});
  print("Updated State Map: $stateMap");

  stateMap.remove("Ondo");
  print("Updated State Map: $stateMap");

  if (stateMap.containsKey("Oyo")) {
    print("Oyo is found");
  } else {
    print("Oyo is not found");
  }
}
