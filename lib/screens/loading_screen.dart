import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

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
    //moved to location.dart
    Location location = Location();
    await location.getCurrentLocation(); //await is used to get latitude and longitude a value
    print(location.latitude);
    print(location.longitude);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton/*in place of RaisedButton*/(
          onPressed: () {
            //getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}


//Latitude: 25.62162162162162, Longitude: 85.16734872717178