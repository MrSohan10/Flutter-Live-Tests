import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _countValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count:',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              _countValue.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _countValue++;
                      setState(() {});
                      if (_countValue >= 5) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Button press $_countValue times'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Close',
                                        style: TextStyle(color: Colors.blue),
                                      ))
                                ],
                              );
                            });
                      }
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      if (_countValue > 0) {
                        _countValue--;
                      }
                      setState(() {});
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 30),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
