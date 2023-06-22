import 'package:assign_weather_app/testpage.dart';
import 'package:flutter/material.dart';
import '../services/request.dart';
import 'package:provider/provider.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Provider.of<Request>(context, listen: false).getData();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TestPage()));
        },
        child: const Text('Data'),
      )),
    );
  }
}
