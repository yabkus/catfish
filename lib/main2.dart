import "dart:io";

void main() {
  String? password;
  int passwordtrial = 0;
  do {
    print("Enter your password: ");
    password = stdin.readLineSync();

    if (password == "1234") {
      print("Correct password, welcome!");
      break;
    } else if (passwordtrial == 3) {
      print("You have exceeded the number of trials. Try again later.");
      break;
    }

    passwordtrial++;
    print("Wrong password, try again: ");
  } while (password != "1234");
}
