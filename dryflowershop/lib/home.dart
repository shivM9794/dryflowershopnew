import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.ctfassets.net/ucgi79tscdcj/kylFA5LjQXZ3dWv5YaFdL/969672b829378353243cd1da75935fb4/dried-flower-banner.png?w=3440&h=3440&fm=webp&q=75"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.houseandgarden.co.uk/photos/61894721121e8bcd2433a11c/4:3/w_1872,h_1404,c_limit/step1_7-8-19-509605x.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.appleyardflowers.com/blog/wp-content/uploads/2019/10/long-lasting-flowers-banner-min.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //SizedBox(height: getProportionateScreenHeight(20)),
              //HomeHeader(),

              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'driedflowerCat');
                    },
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
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, 'otp');
                    },
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
                            'assets/pampass_grass.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Pampass Grass',
                            style: TextStyle(color: Color(0xFF7b4f44)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, 'otp');
                    },
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
                            'assets/preserved.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Preserved Flowers',
                            style: TextStyle(color: Color(0xFF7b4f44)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, 'otp');
                    },
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
                            'assets/artificial.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Artificial Flowers',
                            style: TextStyle(color: Color(0xFF7b4f44)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //CategoriesSection(),
          ],
        ),
      ),
    );
  }
}
