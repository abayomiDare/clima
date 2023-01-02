import 'package:geolocator/geolocator.dart';

class Location {
  // Location({required this.latitude, required this.longitude});
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
