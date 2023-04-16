import 'package:flutter/material.dart';
import 'package:send_it_mate/screens/flight_screen.dart';
import 'package:send_it_mate/screens/shipment_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send It Mate',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Send It Mate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Shipment Application'),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    ElevatedButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ShipmentScreen()),
    );
    },
    child: Text('Shipments'),
    ),
      SizedBox(height: 16.0),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlightScreen()),
          );
        },
        child: Text('Flights'),
      ),
    ],
    ),
    ),
    );
  }
}



class Flight {
  final String name;

  Flight({required this.name});
}