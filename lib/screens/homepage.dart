import 'package:flutter/material.dart';
import '../widgets/searchBar.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.55,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              CustomSearch(
                onPressed: () {},
              ),
              SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  width: MediaQuery.sizeOf(context).height * 0.4,
                  child: Image.network(
                    'https://cdn.weatherapi.com/weather/64x64/day/113.png',
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
