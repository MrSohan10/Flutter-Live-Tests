import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Shopping List'),
          centerTitle: true,
          actions: [Icon(Icons.shopping_cart)],
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ListTile(
              leading: Icon(
                Icons.shop,
                size: 50,
              ),
              title: Text(
                'Apples',
                style: TextStyle(fontSize: 30),
              ),
              contentPadding: EdgeInsets.all(16),
              horizontalTitleGap: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.shop,
                size: 50,
              ),
              title: Text(
                'Bananas',
                style: TextStyle(fontSize: 30),
              ),
              contentPadding: EdgeInsets.all(16),
              horizontalTitleGap: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.shop,
                size: 50,
              ),
              title: Text(
                'Bread',
                style: TextStyle(fontSize: 30),
              ),
              contentPadding: EdgeInsets.all(16),
              horizontalTitleGap: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.shop,
                size: 50,
              ),
              title: Text(
                'Milk',
                style: TextStyle(fontSize: 30),
              ),
              contentPadding: EdgeInsets.all(16),
              horizontalTitleGap: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.shop,
                size: 50,
              ),
              title: Text(
                'Eggs',
                style: TextStyle(fontSize: 30),
              ),
              contentPadding: EdgeInsets.all(16),
              horizontalTitleGap: 40,
            ),
          ],
        ),
      ),
    );
  }
}
