import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '4a1241a78d0335e8b6a623827d142913';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    //moved to location.dart
    Location location = Location();
    await location
        .getCurrentLocation(); //await is used to get latitude and longitude a value
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        'api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$apiKey');
    var weatherData = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton /*in place of RaisedButton*/ (
          onPressed: () {
            //getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
