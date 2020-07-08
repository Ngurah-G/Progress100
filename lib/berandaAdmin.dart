import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BerandaAdmin extends StatefulWidget {
  @override
  _BerandaAdminState createState() => _BerandaAdminState();
}

class _BerandaAdminState extends State<BerandaAdmin> {
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
                    "Ngurah Gede",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: new Text(
                    "arya.suputra@undiksha.ac.id",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage:
                          new AssetImage('assets/appimages/ngurah.jpg'),
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
                new ListTile(
                  title: new Text(
                    'Akun',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: new Icon(
                    Icons.verified_user,
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
            Image.asset("assets/appimages/bg_profile.jpg"),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KARISMA JAYA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                          'Tempat Vape Store Terlengkap dan Termurah di Singaraja.',
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ],
                  ),
                )
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'SELAMAT DATANG DI ADMIN PAGE',
                style: TextStyle(fontWeight: FontWeight.bold),
                softWrap: true,
              ),
            ),
          ],
        ));
  }
}
