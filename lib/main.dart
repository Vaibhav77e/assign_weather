import 'package:assign_weather_app/dummyPage.dart';

import './screens/getStarted.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './services/request.dart';
import 'screens/homepage.dart';
import './screens/detailPage.dart';
import 'package:assign_weather_app/testpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Request())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Dummy(),
        //home: GetStartedPage(),

        routes: {
          HomePage.routeName: (context) => HomePage(),
          DetailPage.routeNamed: (context) => DetailPage(),
        },
      ),
    );
  }
}
