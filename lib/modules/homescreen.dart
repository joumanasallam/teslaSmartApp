import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'package:tesla_smart_app/shared/component/component.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isdragging = true;
  bool ac = true;
  double _value = 3;
  bool istap1 = true;
  bool istap2 = false;
  bool istap3 = false;
  bool istap4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: theme),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  smallbutton(Icons.menu),
                  Column(
                    children: [
                      const Text(
                        "Tesla",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      const Text(
                        "Cybertruck",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  smallbutton(Icons.person_2_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: Image.asset(
                      'assets/images/cybertruk_2 4.png',
                    ).image,
                  ),
                ),
              ),
              const Text(
                "status",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  statusbar(Icons.battery_0_bar, "Battary", "  60%"),
                  statusbar(Icons.arrow_circle_right, "Range", "  297 Km"),
                  statusbar(Icons.heat_pump, "Temperture", "  27 C"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Information",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...text.map((e) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: infowidget(e.text1, e.text2),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Navigation",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "History",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
            ]),
          ),
          isdragging
              ? DraggableScrollableSheet(
                  initialChildSize: .2,
                  minChildSize: .1,
                  maxChildSize: .6,
                  builder: (context, scrollController) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          isdragging = !isdragging;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey[800]!, width: 1),
                              gradient: LinearGradient(colors: [
                                Colors.grey[900]!,
                                Colors.grey[900]!,
                                Colors.grey[800]!,
                              ]),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "A/C is ON",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          "tap to turn off or swipe up ",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        const Text(
                                          "for a fast setup",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        )
                                      ],
                                    ),
                                    mainbutton(60, 60, Icons.power_settings_new)
                                  ],
                                )
                              ],
                            ),
                          )),
                    );
                  })
              : DraggableScrollableSheet(
                  initialChildSize: 0.88,
                  minChildSize: .1,
                  maxChildSize: 0.88,
                  builder: (context, scrollController) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          isdragging = !isdragging;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey[800]!, width: 1),
                            gradient: LinearGradient(colors: [
                              Colors.grey[900]!,
                              Colors.grey[900]!,
                              Colors.grey[800]!,
                            ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        height: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "A/C is OFF",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        " Currently 27 C",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                      const Text(
                                        "tap to turn off or swipe up",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                  mainbutton(60, 60, Icons.power_settings_new)
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black,
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SleekCircularSlider(
                                    appearance: CircularSliderAppearance(
                                      size: 250,
                                      customWidths: CustomSliderWidths(
                                        shadowWidth: 0,
                                        trackWidth: 28,
                                        handlerSize: 15,
                                      ),
                                      animationEnabled: true,
                                      angleRange: 500,
                                      startAngle: 500,
                                      customColors: CustomSliderColors(
                                          dotColor: Colors.black,
                                          trackColor: Colors.grey[900],
                                          progressBarColors: [
                                            Colors.blue[300]!,
                                            Colors.blue[300]!,
                                            Colors.blue[800]!
                                          ],
                                          shadowMaxOpacity: 20.0),
                                      infoProperties: InfoProperties(
                                          mainLabelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40),
                                          bottomLabelText: 'Cooling..',
                                          bottomLabelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    initialValue: 25,
                                    onChange: (double value) {
                                      print(value);
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Fan speed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SfSlider(
                                  value: _value,
                                  inactiveColor: Colors.grey[800],
                                  showDividers: true,
                                  min: 0,
                                  max: 5,
                                  showLabels: true,
                                  activeColor: Colors.blue,
                                  interval: 1,
                                  showTicks: true,
                                  onChanged: (newvalue) {
                                    setState(() {
                                      _value = newvalue;
                                    });
                                  }),
                              SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Mode",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        bottombar(
                                            "Auto", Icons.auto_awesome, istap1),
                                        bottombar(
                                            "Dry", Icons.auto_awesome, istap2),
                                        bottombar(
                                            "Cool", Icons.auto_awesome, istap3),
                                        bottombar("Program",
                                            Icons.auto_awesome, istap4)
                                      ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ]),
      ),
    );
  }
}
