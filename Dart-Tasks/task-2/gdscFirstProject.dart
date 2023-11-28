import 'dart:io';

void findMaximum(List<int> numbers) {
  int max = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  print("\nThe maximum number is: ${max}\n");
}

void findMinimum(List<int> numbers) {
  int min = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  print("\nThe minimum number is: ${min}\n");
}

void calculateSum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print("\nThe sum of the list is: ${sum}\n");
}

void calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  double average = sum / (numbers.length);
  print("\nThe average of the numbers in the list is: ${average}\n");
}

void menu(List<int> numbers) {
  int? choice;
  do {
    print("           Options.");
    print("\n1. Get the maximum number from the list.");
    print("2. Get the minimum number from the list.");
    print("3. Get the sum of all the numbers in the list.");
    print("4. Get the average of the numbers in the list.");
    print("5. Exit the program. \n");
    stdout.write("Enter your choice: ");
    String? input = stdin.readLineSync();
    choice = int.tryParse(input ?? '');
    switch (choice) {
      case 1:
        findMaximum(numbers);
        break;
      case 2:
        findMinimum(numbers);
        break;
      case 3:
        calculateSum(numbers);
        break;
      case 4:
        calculateAverage(numbers);
        break;
      default:
        if (choice == 5) {
          print("\n\tThe program is exiting...\n\t");
          break;
        } else
          print("\nYou have entered invalid input.\n");
        break;
    }
  } while (choice != 5);
}

void main() {
  stdout.write("How many numbers do you want to enter: ");
  String? input = stdin.readLineSync();
  int? size = int.tryParse(input ?? '');
  List<int> numbers = [];
  if (size != null) {
    print('Enter the numbers one by one:');
    for (int i = 0; i < size; i++) {
      var input = stdin.readLineSync();
      int? number = int.tryParse(input ?? '');
      if (number != null) {
        numbers.add(number);
      } else {
        print('Invalid input. Please enter a number.');
        i--; // decrement i to repeat the iteration for invalid input
      }
    }
    print('\nYou entered the numbers: $numbers\n');
  } else {
    print('Invalid input. Please enter a number.');
  }
  menu(numbers);
}
