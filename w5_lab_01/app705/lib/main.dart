import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(App705());

class App705 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  num _randNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(_randNo.toString(), textScaleFactor: 1.5),
            SizedBox(height: 20),
            TextButton(
              child: Text('Random Number', textScaleFactor: 1.2),
              onPressed: () {
                setState(() {
                  _randNo = 1 + Random().nextInt(100);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
