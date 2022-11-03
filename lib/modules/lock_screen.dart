import 'package:flutter/material.dart';
import 'package:tesla_smart_app/modules/homescreen.dart';
import 'package:tesla_smart_app/shared/component/component.dart';

class lockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: theme),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  smallbutton(Icons.settings),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Tesla",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const Text(
              "Cybertruck",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 210,
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "297",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 120,
                      ),
                    ),
                    const Text(
                      "KM",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Image(
                      width: 600,
                      height: 150,
                      alignment: Alignment.bottomRight,
                      image: AssetImage(
                          'assets/images/cybertruck-mod-black2 1.png')),
                )
              ]),
            ),
            const Text(
              "A/C is turned on",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            mainbutton(80, 80, Icons.lock,context: context,widget: homeScreen()),
            const Text(
              "Tap to open car",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
