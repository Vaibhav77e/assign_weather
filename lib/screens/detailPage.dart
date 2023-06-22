import 'package:flutter/material.dart';
import '../widgets/searchBar.dart';

class DetailPage extends StatelessWidget {
  static const routeNamed = '/search';
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(050505),
        appBar: AppBar(
          backgroundColor: Color(050505),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              CustomSearch(
                onPressed: () {},
              ),
            ],
          ),
        )));
  }
}
