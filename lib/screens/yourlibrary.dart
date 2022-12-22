import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        "YourLibrary",
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
