import 'package:flutter/material.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'otp');
        },
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                'assets/splashdry_new.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Dried Flowers',
                style: TextStyle(color: Color(0xFF7b4f44)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
