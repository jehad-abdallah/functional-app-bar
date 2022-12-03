import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;
  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      print(latitude);
      longitude = position.longitude;
      print(longitude);
      print(
          'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
    } catch (e) {
      print(e);
    }
  }
}
