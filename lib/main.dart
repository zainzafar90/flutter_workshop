import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/1.jpg'),
            Image.asset('assets/2.jpg'),
            Image.asset('assets/3.jpg'),
          ],
        ),
      ),
    );
  }
}
