import 'package:flutter/material.dart';
import 'package:state_management_flutter/inherited_widget/inherited_widget_class.dart';
import 'package:state_management_flutter/inherited_widget/page_one.dart';
import 'package:state_management_flutter/inherited_widget/page_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyInheritedWidgetClass(
        adult: true, age: 21, name: "Mahir", child: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [PageOne(), PageTwo()],
        ),
      ),
    );
  }
}
