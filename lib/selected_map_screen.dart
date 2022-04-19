import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class SelectedMapScreen extends StatefulWidget {

  @override
  State<SelectedMapScreen> createState() => _SelectedMapScreenState();
}

class _SelectedMapScreenState extends State<SelectedMapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  late LocationData currentLocation;

  static final CameraPosition _tramStation = CameraPosition(
    target: LatLng(13.7947, 100.3189),
    zoom: 16,
  );
  Marker _markers = Marker(
      markerId: MarkerId('_กาแฟรถราง'),
      infoWindow: InfoWindow(title: 'MU tram'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(13.7947, 100.3189)
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          // SafeArea(
          //   child: Container(
          //     height: 57.6,
          //     margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: <Widget>[
          //         GestureDetector(
          //           onTap: (){
          //             Navigator.of(context).pop();
          //           },
          //           child: Container(
          //             height: 57.6,
          //             width: 57.6,
          //             padding: EdgeInsets.all(18),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(9.6),
          //               color: Color(0x10000000),
          //             ),
          //             child: Icon(Icons.arrow_back_ios),
          //           ),
          //         ),
          //         Container(
          //           height: 57.6,
          //           width: 57.6,
          //           padding: EdgeInsets.all(18),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(9.6),
          //             color: Color(0x10000000),
          //           ),
          //           child: Icon(Icons.volunteer_activism),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: GoogleMap(
              myLocationEnabled: true,
              markers: {
                _markers
              },
              mapType: MapType.normal,
              initialCameraPosition: _tramStation,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 100.0),
        child: FloatingActionButton.extended(
          onPressed: _goToMe,
          label: Text('Current position'),
          icon: Icon(Icons.gps_fixed),
        ),
      ),
    );
  }

  Future<LocationData?> getCurrentLocation() async {
    Location location = Location();
    try {
      return await location.getLocation();
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        // Permission denied
      }
      return null;
    }
  }
  Future _goToMe() async {
    final GoogleMapController controller = await _controller.future;
    currentLocation = (await getCurrentLocation())!;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
              currentLocation.latitude,
              currentLocation.longitude),
          zoom: 16,
        )
    ));
  }
}