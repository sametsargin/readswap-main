import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.asset('assets/firstPage1.png'),
          ),
          Column(
            children: [
              Text(
                "Çevrimiçi Takas",
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 2.1,
                ),
              ),
              Text(
                "Kitaplarınızı takas ederek yeni dünyalara açılan kapıları keşfedin! Siz de bu maceraya katılmak için şimdi uygulamamıza kayıt olun.",
                style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 146, 146, 146)),
                textAlign: TextAlign.center,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 320),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_right_alt),
              iconSize: 60,
              color: Color.fromARGB(255, 82, 182, 86),
            ),
          )
        ],
      ),
    );
  }
}
