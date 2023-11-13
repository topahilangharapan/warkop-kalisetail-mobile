import 'package:flutter/material.dart';
import 'package:warkop_kalisetail/screens/warkop_form.dart';
import 'package:warkop_kalisetail/screens/menu.dart';

class WarkopCard extends StatelessWidget {
  final WarkopItem item;

  const WarkopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    var buttonColor;
    if (item.name.compareTo("Lihat Item") == 0) {
      buttonColor= Colors.indigo;
    }
    else if (item.name.compareTo("Tambah Item") == 0) {
      buttonColor= Colors.blue;
    }
    else if (item.name.compareTo("Logout") == 0) {
      buttonColor= Colors.cyan;
    }
    return Material(
      color: buttonColor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}")));
          if (item.name == "Tambah Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WarkopFormPage()));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}