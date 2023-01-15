
import 'dart:io';

  double numOne = 0;
  double numTwo = 0;
  bool loop = false;

  double result1 = 0;
  String result = '';
  dynamic finalResult = '';
  dynamic op = '';

void main() {
  
  print("Enter The Operation: + , x , - , / , % ...");
  String? op = stdin.readLineSync();
  print("Enter The First Number");
  String? numOne = stdin.readLineSync();
  print("Enter The Second Number");
  String? numTwo = stdin.readLineSync();
  calculation(op, numOne, numTwo);
  
}

 void calculation(op,numOne, numTwo) {

   if (op == '+') {        
        finalResult = add(numOne, numTwo);
    } else if (op == '-') {
        finalResult = sub(numOne, numTwo);
    } else if (op == 'x') {
        finalResult = mul(numOne, numTwo);
    } else if (op == '/') {
        finalResult = div(numOne, numTwo);
    } else if (op == '%') {
        finalResult = rem(numOne, numTwo);
    }else{
        print("Wrong Choice!");
        main();
    }
     print("the result is $finalResult");
}

  String add(numOne, numTwo) {
    result1 = double.parse(numOne) + double.parse(numTwo);
    result = result1.toString();
    return result;
  }

  String sub(numOne, numTwo) {
    result1 = double.parse(numOne) - double.parse(numTwo);
    result = result1.toString();
    return result;
  }

  String mul(numOne, numTwo) {
    result1 = double.parse(numOne) * double.parse(numTwo);
    result = result1.toString();
    return result;
  }

  String div(numOne, numTwo) {
   result1 = double.parse(numOne) / double.parse(numTwo);
    result = result1.toString();
    return result;
  }

  String rem(numOne, numTwo) {
   result1 = double.parse(numOne) % double.parse(numTwo);
    result = result1.toString();
    return result;
  }

