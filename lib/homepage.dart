import './widgets/weatheranimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            )
          ],
        ),
      )),
    );
  }
}
