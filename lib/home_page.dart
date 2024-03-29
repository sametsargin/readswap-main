import 'package:flutter/material.dart';
import 'package:readswap/drawer_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.kategoriler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                  )),
            )
          ],
          title: Text(
            'ReadSwap',
            style: TextStyle(
                color: Colors.green[700],
                fontSize: 30,
                fontWeight: FontWeight.w400,
                letterSpacing: 6),
          )),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, right: 125, bottom: 20),
            child: Column(
              children: [
                Text(
                  "Merhaba, Zühal!",
                  style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 134, 188, 150)),
                ),
                Text(
                  "Her yerde aradığın kitap burada!",
                  style: TextStyle(
                    color: Color.fromARGB(255, 108, 108, 108),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Kitap veya ketegori ara...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        // Bu, odaklandığında çerçeve rengi
                        borderSide: BorderSide(
                          color:
                              Colors.grey[300]!, // Odaklandığında çerçeve rengi
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    cursorColor: const Color.fromARGB(255, 120, 120, 120),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              HeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        )),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Kategoriler", Icons.dashboard_outlined),
          menuItem(2, "Kampanyalar", Icons.local_offer_outlined),
          menuItem(3, "Kaydedilenler", Icons.book_outlined),
          menuItem(4, "Gizlilik Politikası", Icons.privacy_tip_outlined),
          menuItem(5, "Yardım ve Destek", Icons.question_mark_outlined),
          menuItem(6, "Ayarlar", Icons.settings_outlined),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon) {
    return Material(
      // color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context); // Close the Drawer
          if (id == 1) {
            currentPage = DrawerSections.kategoriler;
          } else if (id == 2) {
            currentPage = DrawerSections.kampanyalar;
          } else if (id == 3) {
            currentPage = DrawerSections.kaydedilenler;
          } else if (id == 4) {
            currentPage = DrawerSections.gizlilikPolitikasi;
          } else if (id == 5) {
            currentPage = DrawerSections.yardimDestek;
          } else if (id == 6) {
            currentPage = DrawerSections.ayarlar;
          }
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  kategoriler,
  kampanyalar,
  kaydedilenler,
  gizlilikPolitikasi,
  yardimDestek,
  ayarlar
}
