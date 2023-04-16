import 'package:flutter/material.dart';

import '';
import '../modules/shipment.dart';


class ShipmentScreen extends StatefulWidget {
  @override
  _ShipmentScreenState createState() => _ShipmentScreenState();
}

class _ShipmentScreenState extends State<ShipmentScreen> {
  final List<Shipment> _shipments = [];
  final TextEditingController _shipmentNameController = TextEditingController();
  final TextEditingController _shipmentoriginCountryController =
  TextEditingController();
  final TextEditingController _shipmentdestinationCountryController =
  TextEditingController();
  final TextEditingController _shipmentwhishDateController =
  TextEditingController();
  // final TextEditingController _shipmentnotesController =
  // TextEditingController();
  // final TextEditingController _shipmentweightController =
  // TextEditingController();
  // final TextEditingController _shipmentimageShipmentController =
  // TextEditingController();

  void _addShipment(
      String shipmentName,
      String originCountry,
      String destinationCountry,
      String whishDate,
      ) {
    setState(() {
      print(shipmentName);
      _shipments.add(Shipment(
          name: shipmentName,
          originCountry: originCountry,
          destinationCountry: destinationCountry,
          whishDate: whishDate,
          // notes: notes,
          // weight: weight,
          // imageShipment: imageShipment));
      ));
      print(_shipments.length);
    });
    _shipmentNameController.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All shipment'),
            Expanded(
              child: ListView.builder(
                itemCount: _shipments.length,
                itemBuilder: (BuildContext context, int index) {
                  print(_shipments[index].originCountry);
                  return ListTile(
                    title: Text(_shipments[index].originCountry),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),

            TextField(
              controller: _shipmentNameController,
              decoration: InputDecoration(
                labelText: 'Shipment Name',
              ),
            ),
            TextField(
              controller: _shipmentoriginCountryController,
              decoration: InputDecoration(
                labelText: 'Shipment Origin Country',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _shipmentdestinationCountryController,
              decoration: InputDecoration(
                labelText: 'Shipment Destination',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _shipmentwhishDateController,
              decoration: InputDecoration(
                labelText: 'Shipment wish date',
              ),
            ),
            SizedBox(height: 16.0),
            // TextField(
            //   controller: _shipmentnotesController,
            //   decoration: InputDecoration(
            //     labelText: 'Shipment notes',
            //   ),
            // ),
            // SizedBox(height: 16.0),
            // TextField(
            //   controller: _shipmentweightController,
            //   decoration: InputDecoration(
            //     labelText: 'Shipment weight',
            //   ),
            // ),
            // SizedBox(height: 16.0),
            // TextField(
            //   controller: _shipmentimageShipmentController,
            //   decoration: InputDecoration(
            //     labelText: 'Shipment Image',
            //   ),
            // ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _addShipment(
                    _shipmentNameController.text,
                    _shipmentoriginCountryController.text,
                    _shipmentdestinationCountryController.text,
                    _shipmentwhishDateController.text,
                    // _shipmentnotesController.text,
                    // _shipmentweightController.text,
                    // _shipmentimageShipmentController.text);
                );
              },

              child: Text('Add Shipment'),

            ),

          ],
        ),
      ),
    );
  }
}
