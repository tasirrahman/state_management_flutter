import 'package:get/get.dart';

class MyController extends GetxController {
  // Define the state variables
  var myString = 'Hello, GetX!'.obs;
  var myInt = 0.obs;
  var myBool = false.obs;

  // Methods to update the state
  void updateString(String newValue) {
    myString.value = newValue;
  }

  void incrementInt() {
    myInt.value++;
  }

  void toggleBool() {
    myBool.value = !myBool.value;
  }

 
}
