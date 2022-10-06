import 'package:flutter/material.dart';
class AddToCartSection extends StatefulWidget {
  const AddToCartSection({Key? key}) : super(key: key);

  @override
  State<AddToCartSection> createState() => _AddToCartSectionState();
}

class _AddToCartSectionState extends State<AddToCartSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf8eee1),
        centerTitle: true,
        // for putting the text in centre
        elevation: 0,
        // for removing the shadow
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),

    );
  }
}
