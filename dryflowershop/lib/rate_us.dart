import 'package:flutter/material.dart';

class RateUsPage extends StatefulWidget {
  const RateUsPage({Key? key}) : super(key: key);

  @override
  State<RateUsPage> createState() => _RateUsPageState();
}

class _RateUsPageState extends State<RateUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Rate Us"),
      ),
    );
  }
}
