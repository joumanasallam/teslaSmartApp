import 'package:flutter/material.dart';
import 'package:tesla_smart_app/modules/homescreen.dart';

Widget smallbutton(IconData icon) {
  return Stack(alignment: Alignment.center, children: [
    Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[800]!,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(-3, -3)),
            BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(3, 3)),
          ],
          gradient: LinearGradient(colors: [
            Colors.grey[900]!,
            Colors.black.withOpacity(0.9),
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          border:
              Border.all(color: Colors.grey[900]!.withOpacity(0.8), width: 0.5),
          borderRadius: BorderRadius.circular(30)),
      child: Icon(icon, color: Colors.grey[700], size: 20),
    ),
  ]);
}

Widget mainbutton(double width, double height, IconData icon,
    {BuildContext? context,
    Widget? widget,
    Color? bordercolor,
    List<Color>? gradint,}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.blue[600]!, width: 2),
      gradient: LinearGradient(colors: [
        Colors.blue[300]!,
        Colors.blue[800]!,
        Colors.blue[800]!,
      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
      boxShadow: [
        BoxShadow(
            color: Colors.grey[800]!,
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(-5, -5)),
        BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(5, 5)),
      ],
    ),
    child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: () {
          buttonlogic(context!, widget!);
        }),
  );
}

Gradient theme = LinearGradient(colors: [
  //  Colors.black,
  Colors.black.withOpacity(0.9),
  Colors.black.withOpacity(0.9),
  Colors.black.withOpacity(0.9),
], begin: Alignment.bottomCenter, end: Alignment.topCenter);

Widget statusbar(IconData icon, String text, String data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
      Text(
        data,
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
        ),
      ),
    ],
  );
}

Widget infowidget(String text1, String text2) {
  return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900],
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(5, 5))
          ]),
      child: Stack(
        children: <Widget>[
          //Stack helps to overlap widgets

          Positioned(
              left: -20,
              top: 10,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Colors.grey[900]!,
                        Colors.grey[800]!,
                        Colors.grey[800]!,
                      ])))),
          Positioned(
              //positioned helps to position widget wherever we want.
              top: 40,
              left: 40, //position of the widget
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Colors.grey[900]!,
                        Colors.grey[800]!,
                        Colors.grey[800]!,
                      ])
                      // color:Colors.grey[900]//background color with opacity
                      ))),
          Positioned(
            //main content container postition.
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        text2,
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      SizedBox(
                        height: 3,
                      )
                    ],
                  )),
            ),
          )
        ],
      ));
}

List text = [
  information(
    "Engine",
    "sleeping mood",
  ),
  information(
    "Climate",
    "A/V is on",
  ),
  information(
    "tires",
    "low",
  ),
  information(
    "A/C",
    "good",
  )
];

class information {
  String text1;
  String text2;
  information(this.text1, this.text2);
}

Widget bottombar(String text, IconData icon, bool istap) {
  return Column(
  children: [
    Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 10),
    ),
    SizedBox(
      height: 10,
    ),
   istap? mainbutton(50, 50, icon):mainbuttonblack(50, 50, icon)
  ],
    );
}

void buttonlogic(BuildContext context, Widget widget) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return widget;
  }));
}
Widget mainbuttonblack(double width, double height, IconData icon,
    {BuildContext? context,
    Widget? widget,
    Color? bordercolor,
    List<Color>? gradint,
    Function? istapped}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.black, width: 2),
      gradient: LinearGradient(colors: [
          Colors.grey[900]!,
          Colors.black.withOpacity(0.9),
        ], begin: Alignment.bottomRight, end: Alignment.topLeft),
      boxShadow: [
        BoxShadow(
            color: Colors.grey[800]!,
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(-5, -5)),
        BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(5, 5)),
      ],
    ),
    child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: () {
          istapped;
          buttonlogic(context!, widget!);
        }),
  );
}
