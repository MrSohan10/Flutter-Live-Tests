import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('News Feed'),
        ),
        body: const ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatefulWidget {
  const ImageFeed({super.key});

  @override
  ImageFeedState createState() => ImageFeedState();
}

class ImageFeedState extends State<ImageFeed> {

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Image.network('https://via.placeholder.com/150'),
          ),
        );
      },
    );
  }
}