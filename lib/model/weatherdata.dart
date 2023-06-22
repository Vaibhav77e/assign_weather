import 'package:flutter/material.dart';

class WeatherData {
  final String? loaction;
  final String? city;
  final String? country;
  final String? temp;
  final String? condition;
  final String? imageUrl;
  final String? windDirection;
  final String? humidity;
  final String? co;

  WeatherData(
      {required this.loaction,
      required this.city,
      required this.country,
      required this.condition,
      required this.humidity,
      required this.imageUrl,
      required this.temp,
      required this.co,
      required this.windDirection});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
        loaction: json['loaction'],
        city: json['loaction']['city'],
        country: json['country'],
        condition: json['condition'],
        humidity: json['humidity'],
        imageUrl: json['imageUrl'],
        temp: json['temp'],
        co: json['co'],
        windDirection: json['windDirection']);
  }
}
