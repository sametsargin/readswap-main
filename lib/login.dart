import 'package:flutter/material.dart';

class LoginPagee extends StatelessWidget {
  LoginPagee({Key? key});

  double radius = 40;
  double fontSize = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  'ReadSwap',
                  style: TextStyle(
                    color: Color(0xFF529471),
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 30,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/download.png',
                        height: 40,
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Center(
                          child: Text(
                            'Apple ID ile Giriş Yap',
                            style: TextStyle(
                              color: Colors.black,
                              
                              fontSize: fontSize,
                            ),  
                            textAlign: TextAlign.center,      
                          ),
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
               
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 211, 211, 211),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 30,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/fbLogo.png',
                        height: 40,
                        width: 40,
                        
                      ),
                      Padding(
                         padding: const EdgeInsets.only(left: 50),
                        child: Center(
                          child: Text(
                            'Facebook ile Giriş Yap', 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fontSize, 
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 211, 211, 211),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 30,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/googleLogo.png',
                        height: 40,
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Google ile Giriş Yap',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: fontSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
               backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                  side: BorderSide(
                    color: Color.fromARGB(255, 211, 211, 211),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: <Widget>[
                Expanded(
                    child: Divider(
                  color: Colors.black,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "E-posta İle Devam Et",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.black,
                )),
              ],
            ),
            SizedBox(height: 20),
            // ... (existing code)

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 350,
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'E-posta',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
                              prefixIcon: Icon(Icons.email,color:Color(0xFF529471)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                      
                        Expanded(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Şifre',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),),
                              prefixIcon: Icon(Icons.lock,color:Color(0xFF529471)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Kayıt ol butonuna tıklandığında yapılacak işlemler
                      },
                      
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 300,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Giriş Yap',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 236, 236),
                                fontSize: fontSize,
                              ),
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF529471),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 211, 211, 211),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
