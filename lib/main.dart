/*
* Name: K.K Mogapi
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      //-------------------------- Question 1
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.purple, Colors.blue],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Icon(
                          Icons.list,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        heightFactor: 1,
                        child: Text(
                          "Profile",
                          style: GoogleFonts.lato(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.settings,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      //-------------------------- Question 2
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(left: 20, right: 20, top: 150),
                        elevation: 5,
                        child: Column(
                          children: [
                            SizedBox(height: 80),
                            Text(
                              "John Rambo",
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Age: 25",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_rounded,
                                      color: Colors.purple,
                                    ),
                                    Text(
                                      "1500",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    FullStar(),
                                    FullStar(),
                                    FullStar(),
                                    FullStar(),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.purple,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        height: 140,
                        child: Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZpV4x5lToT7oNvkLTrhVecnERkg7Z9jHwTQ&usqp=CAU",
                            ),
                          ),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //-------------------------- Question 3
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DescriptionCard(
                        upperText: "542",
                        lowerText: "Likes",
                        color1: Colors.purple,
                        color2: Colors.purple[900],
                      ),
                      DescriptionCard(
                        upperText: "670",
                        lowerText: "Rides",
                        color1: Colors.blue,
                        color2: Colors.blue[900],
                      ),
                      DescriptionCard(
                        upperText: "10",
                        lowerText: "\$ per ride",
                        color1: Colors.orange,
                        color2: Colors.orange[900],
                      ),
                    ],
                  ),
                  //-------------------------- Question 4
                  Buttons(
                      btnName: "Order Ride",
                      icon: Icons.shopping_bag,
                      isArrowVisible: true),
                  Buttons(
                      btnName: "Edit Profile",
                      icon: Icons.handyman,
                      isArrowVisible: true),
                  Buttons(
                    btnName: "Help",
                    icon: Icons.help,
                    isArrowVisible: true,
                  ),
                  Buttons(
                      btnName: "Logout",
                      icon: Icons.logout,
                      isArrowVisible: false),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Extracted Widgets ------------------------------------------------------

class FullStar extends StatelessWidget {
  const FullStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.purple,
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons(
      {@required this.btnName,
      @required this.icon,
      @required this.isArrowVisible});
  final String btnName;
  final IconData icon;
  final bool isArrowVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 450,
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 15,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 5),
              Icon(
                icon,
                size: 35,
                color: Colors.purple,
              ),
              SizedBox(width: 10),
              Text(
                btnName,
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          isArrowVisible
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: Colors.orange,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class DescriptionCard extends StatelessWidget {
  DescriptionCard(
      {@required this.upperText,
      @required this.lowerText,
      @required this.color1,
      @required this.color2});
  final String upperText;
  final String lowerText;
  final Color color1;
  final Color color2;
  //
  final double tileWidth = 150;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      child: Container(
        height: 130,
        width: tileWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            //------- Info of cards
            Text(
              upperText,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              lowerText,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 23),
            //--------------- Glowing bottom
            Container(
              height: 7,
              width: tileWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color1, color2],
                ),
                boxShadow: [
                  BoxShadow(
                    color: color1.withOpacity(.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: color2.withOpacity(.3),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
