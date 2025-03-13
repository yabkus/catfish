import 'package:catfish/main5.dart';

void main() {
  bool answer = isEven(3);
  print("The answer is $answer");

  Car Carmode = Car("Toyota", "Camry", "Red", 2020);

  Carmode.drive();

  Book book1 = Book();
  book1.title = "The Great Gatsby";
  book1.author = "F. Scott Fitzgerald";
  book1.read();
}

bool isEven(int n) {
  if (n % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
