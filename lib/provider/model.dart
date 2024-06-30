import 'package:flutter/material.dart';

class usingProviderForPractice extends ChangeNotifier {
  final int account;
  double _balance = 0;
  final double amount;
  final String firstName, lastName;

  usingProviderForPractice(
      {required this.account,
      required this.amount,
      required this.firstName,
      required this.lastName});

  deposit() {
    _balance += amount;
    notifyListeners(); // Notify listeners to update the UI
  }

  withDraw() {
    _balance -= amount;
    notifyListeners(); // Notify listeners to update the UI
  }

  showBalance() {
    return _balance;
  }
}
