import 'package:app_num_1/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          // <== This is the new widget
          colors: [
            Color.fromARGB(255, 153, 195, 230),
            Color.fromARGB(255, 164, 88, 82)
          ],
        ),
      ),
    ),
  );
}
