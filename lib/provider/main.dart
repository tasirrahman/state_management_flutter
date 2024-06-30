import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/provider/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => usingProviderForPractice(
        account: 12345,
        amount: 50.0,
        firstName: 'Tasir',
        lastName: 'Rahman',
      ),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<usingProviderForPractice>(
              builder: (context, provider, child) {
                return Text(
                    "${provider.account} number, owner ${provider.firstName} ${provider.lastName}, Balance ${provider.showBalance()}");
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Provider.of<usingProviderForPractice>(context, listen: false)
                    .withDraw();
              },
              child: Text("Withdraw"),
            ),
            TextButton(
              onPressed: () {
                Provider.of<usingProviderForPractice>(context, listen: false)
                    .deposit();
              },
              child: Text("Deposit"),
            ),
          ],
        ),
      ),
    );
  }
}
