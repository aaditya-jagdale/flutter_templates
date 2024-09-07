import 'dart:async';

import 'package:boilerplate/widgets/fab.dart';
import 'package:flutter/material.dart';

class GradientDisplay extends StatefulWidget {
  const GradientDisplay({super.key});

  @override
  State<GradientDisplay> createState() => _GradientDisplayState();
}

class _GradientDisplayState extends State<GradientDisplay> {
  bool toggle = false;
  Alignment beginPoint = Alignment.topLeft;
  Alignment endPoint = Alignment.bottomRight;

  Timer? _timer;
  int _timerVal = 0;

  void startTimer() {
    Duration duration =
        Duration(milliseconds: _timerVal % 2 == 0 ? 5000 : 2500);
    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        if (_timerVal >= 100) {
          _timer?.cancel();
        } else {
          _timerVal += 1;
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_timerVal % 4 == 0) {
      beginPoint = Alignment.topLeft;
      endPoint = Alignment.bottomRight;
    } else if (_timerVal % 4 == 1) {
      beginPoint = Alignment.topRight;
      endPoint = Alignment.bottomLeft;
    } else if (_timerVal % 4 == 2) {
      beginPoint = Alignment.bottomRight;
      endPoint = Alignment.topLeft;
    } else if (_timerVal % 4 == 3) {
      beginPoint = Alignment.bottomLeft;  
      endPoint = Alignment.topRight;
    }

    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: _timerVal % 2 == 0 ? 4000 : 1000),
          curve: Curves.easeInSine,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: const [Colors.blue, Colors.green],
            begin: beginPoint,
            end: endPoint,
          )),
        ),
      ),
    );
  }
}
