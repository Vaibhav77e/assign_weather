import 'package:flutter/material.dart';

class CustomSearch extends StatefulWidget {
  void Function()? onPressed;
  TextEditingController controller;
  CustomSearch({required this.onPressed, required this.controller});

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 28,
              ),
              onPressed: widget.onPressed,
            ),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
