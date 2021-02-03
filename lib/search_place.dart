import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zq365/home_page.dart';

class SearchPlace extends StatefulWidget {
  @override
  _SearchPlaceState createState() => _SearchPlaceState();
}

class _SearchPlaceState extends State<SearchPlace> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(33.60359, 73.02644);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 20.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Location',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('304-G Eziline St, Rawalpindi, Punjab 46000, P...'),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextField(),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Tag',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                  TextField(
                    decoration: InputDecoration(hintText: 'EG,HOME,WORK'),
                  ),
                ],
              ),
            ),
            FlatButton(
                color: Colors.orangeAccent,
                padding: EdgeInsets.symmetric(horizontal: 50),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.id);
                },
                child: Text('Save Address'))
          ],
        ),
      ),
    ));
  }
}
