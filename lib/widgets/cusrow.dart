import 'package:flutter/material.dart';
import '../widgets/custtext.dart';

class CusRow extends StatelessWidget {
  String image;
  String text1;
  String text2;
  CusRow(
      {required this.image,
      required this.text1,
      required this.text2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      child: Column(
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset(image),
          ),
          buildText(text: text1, color: Colors.white, fontSize: 16),
          buildText(text: text2, color: Colors.white, fontSize: 16),
        ],
      ),
    );
  }
}
