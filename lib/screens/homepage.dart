import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/cusrow.dart';
import '../widgets/custtext.dart';
import '../services/request.dart';
import '../widgets/showBox.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final newData = Provider.of<Request>(context);
    return Scaffold(
        backgroundColor: Color(050505),
        body: SingleChildScrollView(
          child: FutureBuilder(
            //future: newData.getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SafeArea(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return showDialogBox(context);
              } else if (snapshot.hasData) {
                Container(
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
                              crossAxisAlignment:
                                  CrossAxisAlignment.end, //050505
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
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                newData.imageUrl.toString(),
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
                            text: 'Condition',
                            color: Colors.white,
                            fontSize: 40),
                        buildText(
                            text: '13°', color: Colors.white, fontSize: 45),
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
                );
              }
              return const Center(child: Text('Something wrong'));
            },
          ),
        ));
  }
}
