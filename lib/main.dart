import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print("Tap");
                },
                onDoubleTap: () {
                  print("Double Tap");
                },
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  print("Tap");
                },
                onDoubleTap: () {
                  print("Double Tap");
                },
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print("Hello World");
                },
                child: Text("Click Me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
