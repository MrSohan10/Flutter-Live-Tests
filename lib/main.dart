import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle_rounded, size: 50, color: Colors.green),
              Text('Jhon Doe',
                  style: TextStyle(color: Colors.green, fontSize: 30)),
              Text(
                'Flutter Batch 4',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
