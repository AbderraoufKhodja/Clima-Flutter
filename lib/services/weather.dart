import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';
import '../utilities/constants.dart';

class WeatherModel {
  String city;

  Future<dynamic> getLocationWeather() async {
    String url = await getURL();
    NetworkingHelper networkingHelper = NetworkingHelper(
      url: url,
    );
    var weatherData = await networkingHelper.getData();
    return weatherData;
  }

  Future<String> getURL() async {
    if (city == null) {
      Location location = Location();
      await location.getCurrentLocation();
      return 'https://api.openweathermap.org/data/2.5/weather?'
          'lat=${location.latitude}&lon=${location.longitude}'
          '&appid=$kOpenWeatherApiKey&units=metric';
    } else
      return 'https://api.openweathermap.org/data/2.5/weather?'
          'q=$city&appid=$kOpenWeatherApiKey&units=metric';
  }

  void updateCityName(String name) => city = name;

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
