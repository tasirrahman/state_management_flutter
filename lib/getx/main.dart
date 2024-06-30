import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_flutter/getx/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX State Management',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Instantiate the controller
  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text('String: ${myController.myString.value}')),
            Obx(() => Text('Int: ${myController.myInt.value}')),
            Obx(() => Text('Bool: ${myController.myBool.value}')),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Update String'),
              onSubmitted: myController.updateString,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: myController.incrementInt,
              child: Text('Increment Int'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: myController.toggleBool,
              child: Text('Toggle Bool'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
