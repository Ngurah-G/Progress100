import 'dart:convert';
import 'package:mobile_apk/ui/admin/detail.dart';
import 'package:mobile_apk/ui/admin/inputData.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  Future<List> getData() async {
    final response =
        await http.get('http://192.168.43.160/mobile_apk/index.php/Penjualan');
    return json.decode(response.body);
  }

  Future deletePenjualan(id) async {
    await http.delete(
        "http://192.168.43.160/mobile_apk/index.php/Penjualan/hapus/$id");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("Input Data Penjualan"),
      ),
      body: createListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Input Penjualan',
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                  builder: (BuildContext contex) => AddData()))
              .then((value) => {setState(() {})});
        },
      ),
    );
  }

  Widget createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          else if (snapshot.connectionState == ConnectionState.none)
            return Container();
          else {
            List penjualanList = snapshot.data;
            return ListView.builder(
              itemCount: penjualanList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: ListTile(
                    leading: penjualanList[index]['image'] == null
                        ? SizedBox()
                        : Image.network(""),
                    title: Text(
                      penjualanList[index]['nama'],
                      style: textStyle,
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Text(penjualanList[index]['tanggal']
                            .toString()
                            .toString()),
                        Text(
                          " | Rp. " + penjualanList[index]['harga'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () async {
                        await deletePenjualan(penjualanList[index]['id']);
                        Fluttertoast.showToast(
                            msg: "Data Telah Dihapus.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detail(
                                list: penjualanList,
                                index: index,
                              )));
                    },
                  ),
                );
              },
            );
          }
        });
  }
}
