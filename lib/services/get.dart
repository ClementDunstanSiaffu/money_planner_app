
import 'dart:convert';
import 'package:http/http.dart';

Future<dynamic> getContents (String location)async {
  var concatnatedUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$location&APPID=b090dee97cd9ef44bedf287ef960f25e';
  var url = Uri.parse(concatnatedUrl);
    Response response = await get(url);
    dynamic bodyResponse = jsonDecode(response.body);
    return bodyResponse;
}