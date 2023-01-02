import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = 'c91e666ef5320bf452a4f0be200dbac3';
const openWeatherBaseUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationDataByCityName(String cityName) async {
    String url = '$openWeatherBaseUrl?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper locationHelper = NetworkHelper(url);
    return await locationHelper.getData();
  }

  Future<dynamic> getLocationsData() async {
    Location location = Location();
    await location.getCurrentLocation();
    String url = '$openWeatherBaseUrl?lat=${location.latitude}&'
        'lon=${location.longitude}&appid=$apiKey&units=metric';

    NetworkHelper locationHelper = NetworkHelper(url);
    return await locationHelper.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
