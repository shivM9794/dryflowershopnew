
import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
        ), automaticallyImplyLeading: false
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text("Palm Natural",style: TextStyle(color: Color(0xFF7b4f44)),),
              subtitle: Text("Ordered on 4/10/22 at 11:35 AM",style: TextStyle(color: Colors.black),),
              leading: Image.asset(
                'assets/palm.png',
                width:90,
                height: 250,
              ),

              onTap: (){

              },
              //trailing: Icon(Icons.star))
            ),
          ),


        ],
      ),
    ); Container();
  }
}
