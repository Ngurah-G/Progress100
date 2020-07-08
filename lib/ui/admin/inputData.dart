import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:mobile_apk/ui/admin/homeAdmin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerMerk = new TextEditingController();
  TextEditingController controllerJumlah = new TextEditingController();
  TextEditingController controllerHarga = new TextEditingController();
  TextEditingController controllerTanggal = new TextEditingController();
  final format = DateFormat('yyyy-MM-dd');

  void addData() {
    var url = "http://192.168.43.160/mobile_apk/index.php/Penjualan/simpan";

    http.post(url, body: {
      "nama": controllerNama.text,
      "merk": controllerMerk.text,
      "jumlah": controllerJumlah.text,
      "harga": controllerHarga.text,
      "tanggal": controllerTanggal.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text("ADD DATA PENJUALAN"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new TextField(
                      controller: controllerNama,
                      decoration: new InputDecoration(
                          hintText: "Nama", labelText: "Nama Barang")),
                  new TextField(
                      controller: controllerMerk,
                      decoration: new InputDecoration(
                          hintText: "Produk", labelText: "Jenis Produk")),
                  new TextField(
                      controller: controllerJumlah,
                      decoration: new InputDecoration(
                          hintText: "Jumlah", labelText: "Jumlah")),
                  new TextField(
                      controller: controllerHarga,
                      decoration: new InputDecoration(
                          hintText: "Harga", labelText: "Harga")),
                  new DateTimeField(
                      controller: controllerTanggal,
                      format: format,
                      onShowPicker: (context, currentValue) {
                        return showDatePicker(
                            context: context,
                            initialDate: currentValue ?? DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2045));
                      },
                      decoration: new InputDecoration(
                          hintText: "Tanggal", labelText: "Tanggal Input")),
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new RaisedButton(
                    child: new Text("Tambah Data"),
                    color: Colors.lightGreenAccent,
                    onPressed: () {
                      addData();
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) => new Home()));
                      Fluttertoast.showToast(
                          msg: "Data Barang Telah Ditambah",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
