import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_apk/loginPage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerUsername = new TextEditingController();

  void register() {
    var url = "http://192.168.43.160/vape_store/index.php/Login/register";

    http.post(url, body: {
      "email": controllerEmail.text,
      "password": controllerPassword.text,
      "nama": controllerNama.text,
      "username": controllerUsername.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          width: double.infinity,
          decoration: new BoxDecoration(),
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Image.asset(
                    'assets/appimages/bg_profile.jpg',
                    width: 150,
                  ),
                  new TextField(
                      controller: controllerUsername,
                      decoration: new InputDecoration(
                          hintText: "Username", labelText: "Username")),
                  new TextField(
                      controller: controllerNama,
                      decoration: new InputDecoration(
                          hintText: "Full Name", labelText: "Full Name")),
                  new TextField(
                      controller: controllerEmail,
                      decoration: new InputDecoration(
                          hintText: "Email", labelText: "Email")),
                  new TextField(
                      controller: controllerPassword,
                      decoration: new InputDecoration(
                          hintText: "Password", labelText: "Password")),
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new RaisedButton(
                    child: new Text("Register"),
                    color: Colors.yellowAccent,
                    onPressed: () {
                      register();
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) => new LoginPage()));
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
