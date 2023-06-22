import 'package:provider/provider.dart';

import '../services/request.dart';
import '../widgets/weatheranimation.dart';
import 'package:flutter/material.dart';

import '../widgets/cusBtn.dart';
import '../widgets/custtext.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 44, 80),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            WeatherAnimation(),
            SizedBox(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildText(text: 'Weather', color: Colors.white, fontSize: 26),
                  buildText(
                      text: 'News and Feed',
                      color: Colors.yellow[600],
                      fontSize: 26),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CusButton(
                onTapFn: () {
                  Provider.of<Request>(context, listen: false).getData();
                  Navigator.pushNamed(context, '/homepage');
                },
                text: 'Get Started')
          ],
        ),
      )),
    );
  }
}
