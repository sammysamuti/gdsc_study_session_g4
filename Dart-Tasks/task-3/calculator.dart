import 'dart:async';
import 'dart:io';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    return a / b;
  }
}

void main() async {
  int operation;
  double result;
  do {
    Calculator calculator = Calculator();

    stdout.write('Choose an operation: \n');
    stdout.write('1. Add. \n');
    stdout.write('2. Subtract. \n');
    stdout.write('3. Multiply. \n');
    stdout.write('4. Divide. \n');
    stdout.write('5. Exit \n');
    stdout.write('\nEnter your choice: ');
    operation = int.parse(stdin.readLineSync()!);

    if (operation == 5) {
      stdout.write('Program is exiting...');
      break;
    } else if (operation > 4) {
      print('Invalid input');
      break;
    }

    stdout.write('Enter the first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write('Enter the second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    switch (operation) {
      case 1:
        result = calculator.add(num1, num2);
        break;
      case 2:
        result = calculator.subtract(num1, num2);
        break;
      case 3:
        result = calculator.multiply(num1, num2);
        break;
      case 4:
        try {
          result = calculator.divide(num1, num2);
        } catch (e) {
          print(e);
          return;
        }
        break;
      default:
        return;
    }

    await Future.delayed(Duration(seconds: 1), () {
      print('Result: $result\n');
    });
  } while (operation != 5);
}
