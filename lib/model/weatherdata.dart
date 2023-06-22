import 'package:flutter/material.dart';

class WeatherData {
  String city;
  String country;
  String temp;
  String condition;
  String imageUrl;
  String windDirection;
  String humidity;

  WeatherData(
      {required this.city,
      required this.country,
      required this.condition,
      required this.humidity,
      required this.imageUrl,
      required this.temp,
      required this.windDirection});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
        city: json['city'],
        country: json['country'],
        condition: json['condition'],
        humidity: json['humidity'],
        imageUrl: json['imageUrl'],
        temp: json['temp'],
        windDirection: json['windDirection']);
  }
}
