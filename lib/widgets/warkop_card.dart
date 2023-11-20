import 'package:flutter/material.dart';
import 'package:warkop_kalisetail/screens/warkop_form.dart';
import 'package:warkop_kalisetail/screens/menu.dart';
import 'package:warkop_kalisetail/screens/list_product.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:warkop_kalisetail/screens/login.dart';

class WarkopCard extends StatelessWidget {
  final WarkopItem item;

  const WarkopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

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
        onTap: () async {
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
          else if (item.name == "Lihat Item") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductPage()));
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
              // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                "http://10.0.2.2:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
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