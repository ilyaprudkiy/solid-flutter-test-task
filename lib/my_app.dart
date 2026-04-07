import 'package:flutter/material.dart';
import 'package:solid_flutter_test_task/presentation/screens/random_color_page.dart';

/// Root widget of the application
class MyApp extends StatelessWidget {
  /// Creates the root application widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColorPage(),
    );
  }
}
