import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../screens/homepage.dart';

class WeathearLoading extends StatefulWidget {
  static const routeName = '/weather-animation';
  const WeathearLoading({super.key});

  @override
  State<WeathearLoading> createState() => _WeathearLoadingState();
}

class _WeathearLoadingState extends State<WeathearLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isLoaded = false;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isLoaded = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(050505),
      body: _isLoaded
          ? HomePage()
          : Center(
              child: SizedBox(
                height: 400,
                width: 300,
                child: Lottie.asset('assets/snowman.json',
                    controller: _controller, onLoaded: (composition) {
                  _controller.duration = composition.duration;
                  _controller.forward();
                }),
              ),
            ),
    );
  }
}
