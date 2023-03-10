import 'dart:io';
import 'dart:math';

import 'dart:math';

void main(List<String> args) {
  print("Answer 1");
  Map<String, double> expanses = {'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0};

  if (expanses.containsKey('fri')) {
    expanses["fri"] = 5000.0;
  } else {
    expanses['fri'] = 5000.0;
  }
  print(expanses);

  print("Answer 2");

  double area = calculateArea(10);
  print("Area of circle is $area");

  print("Answer 3");

  double c = calculateHypotenuse(10, 10);
  print(" $c.");

  print("Answer 5");

  signupUser('hamza', 'hamza@gmail.com', 'hamza123');
  signupUser('salman', 'salman@gmail.com', 'salman123', '1234567890');
  signupUser('ahmed', 'ahmed@gmail.com', 'ahmed123', '0987654321');

  login('hamza', 'hamza@gmail.com', 'hamza123');
  login('salman', 'salman@gmail.com', 'hamza123');
  login('ahmed', 'ahmed2gmail.com', 'hamza123');

  print("Answer 6");
  findpower(4);

  print("Answer7");
  Calculatevowels("Counting vowels and consonants in Strng");
}

findpower(int power) {
  int number = 5;
  int result = 1;
  for (int i = 1; i <= power; i++) {
    result *= number;
  }
  print(result);
  return result;
}

// function Q-7
Calculatevowels(String text) {
  int vcount = 0;
  int ccount = 0;

  text = text.toLowerCase();
  for (int i = 0; i < text.length; i++) {
    if (text[i] == 'a' ||
        text[i] == 'e' ||
        text[i] == 'i' ||
        text[i] == 'o' ||
        text[i] == 'u') {
      vcount++;
    } else {
      ccount++;
    }
  }
  print(" vowel: $vcount consonant: $ccount");
}

List<Map<String, dynamic>> users = [];

void signupUser(String username, String email, String password,
    [String phoneNumber = '']) {
  Map<String, dynamic> user = {
    'username': username,
    'email': email,
    'password': password,
    'phoneNumber': phoneNumber
  };
  users.add(user);
  print('User registered successfully!');
}
// function Q-5

login(String username, String email, String password) {
  for (Map user in users) {
    if (user['username'] == username &&
        user['email'] == email &&
        user['password'] == password) {
      print('Login successful!');
      return true;
    }
  }
  print('signin again');
  return false;
}

// function Q-3

double calculateHypotenuse(double a, double b) {
  double c = sqrt(a * a + b * b);
  return c;
}

// function Q-2
double calculateArea(double radius) {
  return 3.14159 * radius * radius;
}
