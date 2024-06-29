import 'package:flutter/material.dart';

class MyInheritedWidgetClass extends InheritedWidget {
  final String name;
  final int age;
  final bool adult;
  const MyInheritedWidgetClass(
      {super.key,
      required this.child,
      required this.adult,
      required this.age,
      required this.name})
      : super(child: child);

  @override
  final Widget child;

  static MyInheritedWidgetClass? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidgetClass>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidgetClass oldWidget) {
    return oldWidget.child != child;
  }
}
