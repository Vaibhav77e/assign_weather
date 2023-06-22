import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CusButton extends StatelessWidget {
  String text;
  void Function()? onTapFn;

  CusButton({required this.onTapFn, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFn,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.yellow[600], borderRadius: BorderRadius.circular(13)),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
