import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> weatherInfo = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info App'),
      ),
      body: ListView.separated(
        itemCount: weatherInfo.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('City: ${weatherInfo[index]["city"]}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Temperature: ${weatherInfo[index]["temperature"].toString()}°C'),
                  Text('Condition: ${weatherInfo[index]["condition"].toString()}'),
                  Text('Humidity: ${weatherInfo[index]["humidity"].toString()}%'),
                  Text('Wind Speed ${weatherInfo[index]["windSpeed"].toString()} m/s'),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(height: 4,),
      ),
    );
  }
}
