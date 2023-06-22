import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class Request with ChangeNotifier {
  String name = '';
  String country = '';
  String wind_dir = '';
  String humidity = '';
  String co = '';
  String temp = '';
  String cond = '';
  String imageUrl = '';
  String newimageUrl = '';

  Future getData() async {
    const url =
        'https://api.weatherapi.com/v1/current.json?key=9f960fea163b489a8ca73655232206&q=mumbai&aqi=yes';
    var uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = response.body;
        Map<String, dynamic> jsondata = jsonDecode(data);
        name = jsondata['location']['name'];
        country = jsondata['location']['country'];
        cond = jsondata['current']['condition']['text'];
        imageUrl = jsondata['current']['condition']['icon'];
        wind_dir = jsondata['current']['wind_dir'];
        humidity = jsondata['current']['humidity'].toString();
        temp = jsondata['current']['temp_c'].toString();
        newimageUrl = 'https:$imageUrl';
        co = jsondata['current']['air_quality']['co'].toStringAsFixed(3);
        print('Response: $data');
        print('Loaction: $name');
        notifyListeners();
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future searchCity(String newCity) async {
    final url =
        'https://api.weatherapi.com/v1/current.json?key=9f960fea163b489a8ca73655232206&q=$newCity&aqi=yes';
    var uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = response.body;
        Map<String, dynamic> jsondata = jsonDecode(data);
        name = jsondata['location']['name'];
        country = jsondata['location']['country'];
        cond = jsondata['current']['condition']['text'];
        imageUrl = jsondata['current']['condition']['icon'];
        wind_dir = jsondata['current']['wind_dir'];
        humidity = jsondata['current']['humidity'].toString();
        temp = jsondata['current']['temp_c'].toString();
        newimageUrl = 'https:$imageUrl';
        co = jsondata['current']['air_quality']['co'].toStringAsFixed(2);
        print('Response: $data');
        print('Loaction: $name');

        notifyListeners();
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
