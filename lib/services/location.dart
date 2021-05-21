import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentLocation() async {   //Future is used because of await while calling getCurrentLocation
    // LocationPermission permission = await Geolocator.checkPermission();
    // print(permission);
    // LocationPermission permission1 = await Geolocator.requestPermission();
    // print(permission1);
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low); //also take permission!!!
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (e) {
      print(e);
    }
  }
}