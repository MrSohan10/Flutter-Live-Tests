import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizeSelector(),
    );
  }
}



class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = 'S';

  void _onSizeSelected(String size) {
    setState(() {
      selectedSize = size;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected size: $size'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('S'),
                      child: Text('S'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'S' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('M'),
                      child: Text('M'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'M' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('L'),
                      child: Text('L'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'L' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('XL'),
                      child: Text('XL'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'XL' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('XXL'),
                      child: Text('XXL'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'XXL' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => _onSizeSelected('XXXL'),
                      child: Text('XXXL'),
                      style: ElevatedButton.styleFrom(
                        primary:
                        selectedSize == 'XXXL' ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

