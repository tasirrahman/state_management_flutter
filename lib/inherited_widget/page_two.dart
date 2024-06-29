import 'package:flutter/material.dart';
import 'package:state_management_flutter/inherited_widget/inherited_widget_class.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    final inheritedData = MyInheritedWidgetClass.of(context)?.name;
    return Text("He's name is ${inheritedData}");
  }
}
