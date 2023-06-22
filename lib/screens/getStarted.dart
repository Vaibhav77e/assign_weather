import '../widgets/weatheranimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/cusBtn.dart';

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
                  Text(
                    'Weather',
                    //style: TextStyle(fontSize: 26, color: Colors.yellow[600],),
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'News and Feed',
                    //style: TextStyle(fontSize: 26, color: Colors.yellow[600],),
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CusButton(
                onTapFn: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                text: 'Get Started')
          ],
        ),
      )),
    );
  }
}
