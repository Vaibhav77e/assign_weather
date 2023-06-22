import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildText(
    {required String text, required Color? color, required double? fontSize}) {
  return Text(
    text,
    //style: TextStyle(fontSize: 26, color: Colors.yellow[600],),
    style: GoogleFonts.poppins(
        fontSize: fontSize, color: color, fontWeight: FontWeight.w600),
  );
}
