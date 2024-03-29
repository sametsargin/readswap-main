import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double topPadding =
        deviceHeight * 0.07; // Örneğin, yüksekliğin %10'u için bir değer
    return Container(
      color: Color.fromARGB(255, 74, 143, 106),
      width: double.infinity,
      padding: EdgeInsets.only(top: topPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: deviceHeight * 0.12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/atam.jpeg')),
            ),
          ),
          Text(
            "Mehmet Yaşa",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              "mehmetyasaa@outlook.com",
              style: TextStyle(color: Colors.grey[200], fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
