import 'package:flutter/material.dart';
class Custom extends StatefulWidget {
  const Custom({Key? key,
    required this.title,
    required this.description,}) : super(key: key);
  final String title, description;

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 15),
            Text(
              "${widget.title}",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,color: Color(0xFF7b4f44),
              ),
            ),
            SizedBox(height: 12),
            Text("${widget.description}"),
            SizedBox(height: 20),
            Divider(
              height: 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: InkWell(
                highlightColor: Colors.grey[200],
                onTap: () {
                  Navigator.pushNamed(context, 'cart');
                },
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF7b4f44),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                highlightColor: Colors.grey[200],
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
