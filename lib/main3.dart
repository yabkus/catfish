import "dart:io";

void main() {
  String? emailaddress;
  String? password;
  int emailtrial = 0;
  int passwordtrial = 0;

  do {
    print("Enter your email address: ");
    emailaddress = stdin.readLineSync();

    if (emailaddress == "ahmed@lamar.space") {
      print("Correct email address, welcome!");
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
      break;
    } else if (emailtrial == 3) {
      print("You have exceeded the number of trials. Try again later.");
      break;
    }
    emailtrial++;
  } while (emailaddress != "ahmed@lamar.space");
}
