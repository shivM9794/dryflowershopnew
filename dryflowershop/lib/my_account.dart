import 'package:dryflowershop/flowers_category.dart';
import 'package:dryflowershop/grid.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf8eee1),
          centerTitle: true,
          // for putting the text in centre
          elevation: 0,
          // for removing the shadow
          title: Text(
            "My Account",
            style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
          ),
        ),
        body: const MyCustomForm(),
      ),
    );

  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Alex George',
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '+61 8080808080',
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'alex@gmail.com',
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF7b4f44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        )

      ],
    );
  }
}
