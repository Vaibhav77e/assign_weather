import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Request with ChangeNotifier {
  Future getData() async {
    const url =
        'https://api.weatherapi.com/v1/current.json?key=9f960fea163b489a8ca73655232206&q=mumbai';
    var uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = response.body;
        print('Response: $data');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
