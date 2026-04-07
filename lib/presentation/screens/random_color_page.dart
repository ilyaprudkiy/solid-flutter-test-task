import 'dart:math';
import 'package:flutter/material.dart';

/// Start screen with a welcome message and random color changes
class RandomColorPage extends StatefulWidget {
  /// Creates the  random color screen widget.
  const RandomColorPage({super.key});

  @override
  State<RandomColorPage> createState() => _RandomColorPageState();
}

class _RandomColorPageState extends State<RandomColorPage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeNewColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  /// Calls a private method
  /// Changes the backgroundColor state  to the color obtained from that method
  void _changeNewColor() {
    setState(() {
      backgroundColor = _generateRandomColor();
    });
  }

  ///gets the Random class and uses it to generate random numbers from 0 to 256
  ///substitutes these numbers into the corresponding color variables
  ///returns the finished random color
  Color _generateRandomColor() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);

    return Color.fromRGBO(r, g, b, 1);
  }
}
