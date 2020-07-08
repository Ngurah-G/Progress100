import 'package:mobile_apk/berandaUser.dart';
import 'package:mobile_apk/listProduk.dart';
import 'package:flutter/material.dart';

class MyAppUser extends StatefulWidget {
  @override
  _MyAppUserState createState() => _MyAppUserState();
}

class _MyAppUserState extends State<MyAppUser> {
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
        backgroundColor: Colors.red,
        body: new PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: <Widget>[
            new Beranda(),
            new ListProduk(),
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
            ]));
  }
}
