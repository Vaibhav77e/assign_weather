import 'package:flutter/material.dart';
import '../widgets/cusrow.dart';
import '../widgets/custtext.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(050505),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end, //050505
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 30,
                            color: Colors.white,
                          ),
                          buildText(
                              text: 'City,', color: Colors.white, fontSize: 24),
                          buildText(
                              text: 'Country',
                              color: Colors.white,
                              fontSize: 20),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/search');
                        },
                        child: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).height * 0.5,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/mapnew.png',
                        ),
                        fit: BoxFit.cover,
                      )),
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.12,
                        width: MediaQuery.sizeOf(context).height * 0.12,
                        child: Image.asset(
                          'assets/sunandmoon.png',
                        ),
                      )),
                  buildText(
                      text: 'Condition', color: Colors.white, fontSize: 40),
                  buildText(text: '13°', color: Colors.white, fontSize: 45),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CusRow(
                          image: 'assets/winddirection.png',
                          text1: '23 kmph',
                          text2: 'Wind'),
                      CusRow(
                          image: 'assets/drop.png',
                          text1: '75 %',
                          text2: 'Humidity'),
                      CusRow(
                          image: 'assets/airpollution.png',
                          text1: '500ppm',
                          text2: 'CO'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
