import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  void Function()? onPressed;
  CustomSearch({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 28,
              ),
              onPressed: onPressed,
            ),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
