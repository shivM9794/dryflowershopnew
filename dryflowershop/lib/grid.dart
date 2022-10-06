import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  List<String> images = [
    "assets/about_us.png",
    "assets/Banner New.png",
    "assets/Profile Image.png",
    "assets/splashdry_new.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}


