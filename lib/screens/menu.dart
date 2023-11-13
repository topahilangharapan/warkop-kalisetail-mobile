import 'package:flutter/material.dart';
import 'package:warkop_kalisetail/widgets/left_drawer.dart';
import 'package:warkop_kalisetail/screens/warkop_form.dart';
import 'package:warkop_kalisetail/widgets/warkop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<WarkopItem> items = [
    WarkopItem("Lihat Item", Icons.checklist),
    WarkopItem("Tambah Item", Icons.add_shopping_cart),
    WarkopItem("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Warkop Kalisetail',
        ),
        backgroundColor:Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Kalisetail +272m', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((WarkopItem item) {
                  // Iterasi untuk setiap item
                  return WarkopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WarkopItem {
  final String name;
  final IconData icon;

  WarkopItem(this.name, this.icon);
}