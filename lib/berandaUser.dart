import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('KARISMA JAYA'),
              ]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Click  search');
              },
            ),
          ],
        ),
        drawer: new Drawer(
          child: Container(
            color: Colors.lightBlue,
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text(
                    "gede arta",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: new Text(
                    "Gede99@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage:
                          new AssetImage('assets/appimages/user.png'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/appimages/bg_profile.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                new ListTile(
                  title: new Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: new Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                ),
                new ListTile(
                  title: new Text(
                    'Wishlist',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: new Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  height: 2,
                ),
                new ListTile(
                  title: new Text(
                    'Setting',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: new Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
                new ListTile(
                  title: new Text(
                    'Logout',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: new Icon(
                    Icons.exit_to_app,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                    Fluttertoast.showToast(
                        msg: "Anda Telah Logout",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200,
              child: Carousel(
                boxFit: BoxFit.fill,
                images: [
                  Image.asset('assets/appimages/hexomv3.jpg'),
                  Image.asset('assets/appimages/foxy.jpg'),
                  Image.asset('assets/appimages/foxy2.jpg'),
                ],
                indicatorBgPadding: 3.5,
                dotColor: Colors.red,
              ),
            ),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'THE VAPE STORE_IND',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  Text(
                    '215',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'SELAMAT DATANG DI KARISMA JAYA VAPE STORE \n\n'
                'SEMOGA PILIHAN SESUAI DENGAN KEINGINAN ANDA \n\n'
                'ign : @karismajaya',
                style: TextStyle(fontWeight: FontWeight.bold),
                softWrap: true,
              ),
            ),
          ],
        ));
  }
}
