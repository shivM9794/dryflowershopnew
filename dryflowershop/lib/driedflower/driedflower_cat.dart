import 'package:flutter/material.dart';

class DriedFlowerCategory extends StatefulWidget {
  const DriedFlowerCategory({Key? key}) : super(key: key);

  @override
  State<DriedFlowerCategory> createState() => _DriedFlowerCategoryState();
}

class _DriedFlowerCategoryState extends State<DriedFlowerCategory> {
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
            "Dried Flower Types",
            style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'palm');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/palm.png',
                      ),
                    ),

                    Expanded(flex: 1,  child: Text('Palm',style: TextStyle(color: Color(0xFF7b4f44)),))
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
               // Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/drywheat.png',
                      ),
                    ),

                    Expanded(flex: 1,  child: Text('Dry Wheat',style: TextStyle(color: Color(0xFF7b4f44)),)),
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
               // Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/sorghum.png',
                      ),
                    ),

                    Expanded(flex: 1,  child: Text('Sorghum',style: TextStyle(color: Color(0xFF7b4f44)),)),
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
               // Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/dollorgum.png',
                      ),
                    ),

                    Expanded(flex: 1,  child: Text('Dolloe Gum',style: TextStyle(color: Color(0xFF7b4f44)),)),
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/drylotus.png',
                      ),
                    ),

                    Expanded(flex: 1,  child: Text('Dry Lotus',style: TextStyle(color: Color(0xFF7b4f44)),)),
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, 'settings');
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/banksai.png',
                      ),
                    ),

                    Expanded(flex: 1,
                      child: Text('Banksai',style: TextStyle(color: Color(0xFF7b4f44)),))
                    // Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Text(
                    //     'Dried Flowers',
                    //     style: TextStyle(color: Color(0xFF7b4f44)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ));
  }
}
