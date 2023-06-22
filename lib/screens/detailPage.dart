import 'package:flutter/material.dart';
import '../widgets/searchBar.dart';
import '../services/request.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  static const routeNamed = '/search';
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(050505),
        appBar: AppBar(
          backgroundColor: Color(050505),
          leading: IconButton(
            icon: const Icon(
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
                controller: searchController,
                onPressed: () async {
                  try {
                    Provider.of<Request>(context, listen: false)
                        .searchCity(searchController.text);
                    Navigator.pushNamed(context, '/homepage');
                  } catch (e) {
                    print(e.toString());
                  }
                },
              ),
            ],
          ),
        )));
  }
}
