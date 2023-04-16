// import 'package:flutter/material.dart';
//
// class AddShipmentModal extends StatelessWidget {
//   final VoidCallback  _addShipment;
//
//   AddShipmentModal(this._addShipment);
//   final TextEditingController _shipmentNameController = TextEditingController();
//   final TextEditingController _shipmentoriginCountryController =
//   TextEditingController();
//   final TextEditingController _shipmentdestinationCountryController =
//   TextEditingController();
//   final TextEditingController _shipmentwhishDateController =
//   TextEditingController();
//   final TextEditingController _shipmentnotesController =
//   TextEditingController();
//   final TextEditingController _shipmentweightController =
//   TextEditingController();
//   final TextEditingController _shipmentimageShipmentController =
//   TextEditingController();
//   @override
//   void dispose() {
//     _shipmentNameController.dispose();
//    // super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Container(
//         padding: EdgeInsets.all(20),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       TextField(
//         controller: _shipmentNameController,
//         decoration: InputDecoration(
//           labelText: 'Shipment Name',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentoriginCountryController,
//         decoration: InputDecoration(
//           labelText: 'Shipment Origin Country',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentdestinationCountryController,
//         decoration: InputDecoration(
//           labelText: 'Shipment Destination',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentwhishDateController,
//         decoration: InputDecoration(
//           labelText: 'Shipment wish date',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentnotesController,
//         decoration: InputDecoration(
//           labelText: 'Shipment notes',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentweightController,
//         decoration: InputDecoration(
//           labelText: 'Shipment weight',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       TextField(
//         controller: _shipmentimageShipmentController,
//         decoration: InputDecoration(
//           labelText: 'Shipment Image',
//         ),
//       ),
//       SizedBox(height: 16.0),
//       // ElevatedButton(
//       //   onPressed: () {
//       //     _addShipment(
//       //         _shipmentNameController.text,
//       //         _shipmentoriginCountryController.text,
//       //         _shipmentdestinationCountryController.text,
//       //         _shipmentwhishDateController.text,
//       //         _shipmentnotesController.text,
//       //         _shipmentweightController.text,
//       //         _shipmentimageShipmentController.text);
//       //   },
//
//       //  child: Text('Add Shipment'),
//
//       ),
//
//
//
//     SizedBox(height: 20),
//     Row(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//     ElevatedButton(
//     onPressed: () {
//     Navigator.of(context).pop();
//     },
//     child: Text('Cancel'),
//     ),
//     ])
//           ],
//     ),
//     ),
//     );
//   }}