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
            Expanded(
              child: Container(
                child: Image.asset('assets/4.gif'),
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                child: Image.asset('assets/2.jpg'),
                color: Colors.blue,
              ),
            ),
            Image.asset('assets/3.jpg'),
          ],
        ),
      ),
    );
  }
}
