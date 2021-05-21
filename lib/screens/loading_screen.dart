import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    // LocationPermission permission = await Geolocator.checkPermission();
    // print(permission);
    // LocationPermission permission1 = await Geolocator.requestPermission();
    // print(permission1);
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);  //also take permission!!!
    print(position);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton/*in place of RaisedButton*/(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}


//Latitude: 25.62162162162162, Longitude: 85.16734872717178