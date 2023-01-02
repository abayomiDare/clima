import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocations();
    super.initState();
  }

  void getLocations() async {
    Location location = Location();
    await location.getCurrentLocation();
    getData();
    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=c91e666ef5320bf452a4f0be200dbac3');
    http.Response response = await http.get(url);
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // getLocations();
            //Get the current location
          },
          // child: const Text('Get Location'),
        ),
      ),
    );
  }
}
