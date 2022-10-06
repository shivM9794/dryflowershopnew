
import 'package:dryflowershop/cart.dart';
import 'package:dryflowershop/home.dart';
import 'package:dryflowershop/privacy.dart';
import 'package:dryflowershop/profile.dart';
import 'package:dryflowershop/terms.dart';
import 'package:flutter/material.dart';


import 'my_drawer_header.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int selectedIndex = 0;
  final tabs = [
    const HomePage(),
    const ProfilePage(),
    const Cart(),

  ];

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
          "Dry Flower Shop",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      // body: Container(
      //   child: Center(
      //     child: Text(""),
      //   ),
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            MyHeaderDrawer(),
            ListTile(
              leading: const Icon(Icons.dashboard_outlined,color:Color(0xFF7b4f44)),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, "dashboard");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline,color:Color(0xFF7b4f44)),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, "aboutUs");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            Divider(color: Colors.grey.shade400),
            ListTile(
              leading: const Icon(Icons.share_outlined,color:Color(0xFF7b4f44)),
              title: const Text('Share App'),
              onTap: () {
                //Share.share('check out my website https://example.com');
                Navigator.pushNamed(context, "share");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_rate_outlined,color:Color(0xFF7b4f44)),
              title: const Text('Rate Us'),
              onTap: () {
                //Share.share('check out my website https://example.com');
                Navigator.pushNamed(context, "rateUs");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            Divider(color: Colors.grey.shade400),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined,color:Color(0xFF7b4f44)),
              title: const Text('Privacy Policy'),
              onTap: () {
                //Share.share('check out my website https://example.com');
                Navigator.pushNamed(context, "privacy");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.folder_copy_outlined,color:Color(0xFF7b4f44)),
              title: const Text('Terms & Conditions'),
              onTap: () {
                //Share.share('check out my website https://example.com');
                Navigator.pushNamed(context, "terms");
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF7b4f44),
        unselectedItemColor: Colors.black,
        iconSize: 30,
        backgroundColor: Color(0xFFf8eee1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
        ],

        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        }
      ),


    );
  }


}
