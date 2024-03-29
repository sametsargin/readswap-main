import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const CategoryTile({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
          ),
        ),
        onTap: () {},
        leading: Image.asset(
          imagePath,
          width: 70,
          height: 70,
        ),
        trailing: Image.asset('assets/ok.png'),
      ),
    );
  }
}

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(166, 166, 166, 166),
        title: Text('Kategoriler'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Buraya arama işlemleri ekleyebilirsiniz
            },
          ),
        ],
      ),
      body: Column(
        children: [
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
          CategoryTile(
            title: 'Bilim',
            imagePath: 'assets/CategoryBilim.png',
          ),
          CategoryTile(
            title: 'Edebiyat',
            imagePath: 'assets/CategoryEdebiyat.png',
          ),
          CategoryTile(
            title: 'Çocuk',
            imagePath: 'assets/CategoryCocuk.png',
          ),
          CategoryTile(
            title: 'Eğitim',
            imagePath: 'assets/CategoryEgitim.png',
          ),
        ],
      ),
    );
  }
}
