import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future getCurrentLocation() async {
    try {
      Position position =
          await getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e.toString());
    }
  }
}

// var temp = json['main']['temp'];
//       var condition = jsonDecode(data)['weather'][0]['id'];
//       var cityName = jsonDecode(data)['name'];
