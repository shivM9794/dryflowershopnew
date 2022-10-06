import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
          "Payment",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Radio(value: "cod",
                groupValue: 1,
                onChanged: (onChanged) {
              Navigator.pushNamed(context, 'custom');
            }),
            Text("Cash On Delivery"),
          ],
        ),
      ),
    );
  }
}
