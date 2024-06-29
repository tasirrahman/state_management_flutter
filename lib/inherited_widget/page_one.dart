import 'package:flutter/material.dart';
import 'package:state_management_flutter/inherited_widget/inherited_widget_class.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    final inheritedData = MyInheritedWidgetClass.of(context)?.adult;
    return Text("Is mahir adult? Ans:${inheritedData == true ? "Yes" : "No"}");
  }
}
