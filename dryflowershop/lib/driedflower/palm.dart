import 'package:flutter/material.dart';
class Palm extends StatefulWidget {
  const Palm({Key? key}) : super(key: key);

  @override
  State<Palm> createState() => _PalmState();
}

class _PalmState extends State<Palm> {
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
          "Palm",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Select your type',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF7b4f44),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            GridView.count(crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'details');
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
                            'assets/palm_natural.png',
                          ),
                        ),

                        Expanded(flex: 1,  child: Text('Palm Natural',style: TextStyle(color: Color(0xFF7b4f44)),))
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
                    Navigator.pushNamed(context, 'details');
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
                            'assets/palm_bleached.png',
                          ),
                        ),

                        Expanded(flex: 1,  child: Text('Palm Bleached',style: TextStyle(color: Color(0xFF7b4f44)),)),
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
            ),
          ],
        ),


        //This is used when we use api
        // body: Container(
        //   padding: EdgeInsets.all(7),
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: GridView.builder(
        //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //             crossAxisCount: 2,
        //             crossAxisSpacing: 10,
        //             mainAxisSpacing: 10,
        //           ),
        //           itemCount: 4,
        //           itemBuilder: (BuildContext context, int index) {
        //             return Padding(
        //               padding: const EdgeInsets.all(2.0),
        //               child: Container(
        //                 child: InkWell(
        //                   child: Container(
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(color: Colors.black),
        //                     ),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Image.asset('assets/splashdry_new.png',
        //                           fit: BoxFit.cover,
        //                           height: 50,
        //                           width: 50,
        //                         ),
        //                         SizedBox(
        //                           height: 15,
        //                         ),
        //                         Text(
        //                         'Palm',
        //                           style: TextStyle(
        //                               fontSize: 20, fontWeight: FontWeight.w500),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   onTap: () {},
        //                 ),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
    );

  }
}
