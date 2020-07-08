import 'package:mobile_apk/berandaAdmin.dart';
import 'package:mobile_apk/listProduk.dart';
import 'package:mobile_apk/ui/admin/homeAdmin.dart';
import 'package:flutter/material.dart';

class MyAppAdmin extends StatefulWidget {
  @override
  _MyAppAdminState createState() => _MyAppAdminState();
}

class _MyAppAdminState extends State<MyAppAdmin> {
  PageController controller;
  int index = 0;
  @override
  void initState() {
    controller = PageController(keepPage: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: <Widget>[
            new BerandaAdmin(),
            new ListProduk(),
            new Home(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            currentIndex: index,
            onTap: (int choice) {
              controller.jumpToPage(choice);
              setState(() {
                index = choice;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Beranda")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text("List Produk")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.edit), title: Text("Input Penjualan")),
            ]));
  }
}
