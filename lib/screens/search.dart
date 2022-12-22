import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        "Search",
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}
