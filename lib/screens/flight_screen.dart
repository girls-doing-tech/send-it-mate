import 'package:flutter/material.dart';

import '../modules/flight.dart';

class FlightScreen extends StatefulWidget {
  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  final List<Flight> _flights = [];
  final TextEditingController _flightNameController = TextEditingController();
  final TextEditingController _departureAirportController = TextEditingController();
  final TextEditingController _destinationAirportController = TextEditingController();
  final TextEditingController _departureTimeController = TextEditingController();
  final TextEditingController _arrivalTimeController = TextEditingController();


  @override
  void dispose() {
    _flightNameController.dispose();
    super.dispose();
  }

  void _addFlight(String flightName,String departureAirport, String destinationAirport, String departureTime, String arrivalTime) {
    setState(() {
      _flights.add(
          Flight(
          departureAirport:  'departureAirport',
          destinationAirport:'destinationAirport',
          departureTime:'departureTime',
          arrivalTime:'arrivalTime',
            name: flightName,
      )
      );});
    _flightNameController.clear();
    _departureAirportController.clear();
    _destinationAirportController.clear();
    _departureTimeController.clear();
    _arrivalTimeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flights'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('flights'),
            Expanded(
              child: ListView.builder(
                itemCount: _flights.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_flights[index].name),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _flightNameController,
              decoration: InputDecoration(
                labelText: 'Flight Name',
              ),
            ),
            TextField(
              controller: _departureAirportController,
              decoration: InputDecoration(
                labelText: 'Departure Airport',
              ),
            ),
            TextField(
              controller: _destinationAirportController,
              decoration: InputDecoration(
                labelText: 'Destination Airport',
              ),
            ),
            TextField(
              controller: _departureTimeController,
              decoration: InputDecoration(
                labelText: 'Departure Time ',
              ),
            ),TextField(
              controller: _arrivalTimeController,
              decoration: InputDecoration(
                labelText: 'Arrival Time ',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _addFlight(_flightNameController.text,_departureAirportController.text,_destinationAirportController.text,_departureTimeController.text,_arrivalTimeController.text);
              },
              child: Text('Add Flight'),
            ),
          ],
        ),
      ),);
  }
  }