import 'package:flutter/material.dart';
import '../widgets/cusrow.dart';
import '../widgets/custtext.dart';
import '../services/request.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newData = Provider.of<Request>(context);
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
                              text: '${newData.name},',
                              color: Colors.white,
                              fontSize: 24),
                          buildText(
                              text: newData.country.toString(),
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
                        image: AssetImage('assets/mapnew.png'),
                        fit: BoxFit.cover,
                      )),
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.all(80.0),
                          child: Image.network(
                            'https:${newData.imageUrl}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                  buildText(
                      text: newData.cond, color: Colors.white, fontSize: 40),
                  buildText(
                      text: '${newData.temp}°',
                      color: Colors.white,
                      fontSize: 45),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CusRow(
                          image: 'assets/winddirection.png',
                          text1: newData.wind_dir,
                          text2: 'Wind'),
                      CusRow(
                          image: 'assets/drop.png',
                          text1: '${newData.humidity} %',
                          text2: 'Humidity'),
                      CusRow(
                          image: 'assets/airpollution.png',
                          text1: newData.co.toString(),
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
