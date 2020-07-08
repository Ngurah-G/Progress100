import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController controllerNama;
  TextEditingController controllerMerk;
  TextEditingController controllerJumlah;
  TextEditingController controllerHarga;
  TextEditingController controllerTanggal;
  final format = DateFormat('yyyy-MM-dd');

  void editData() async {
    var url =
        "http://192.168.43.160/mobile_apk/index.php/Penjualan/simpan_update";
    await http.post(url, body: {
      "id": widget.list[widget.index]['id'],
      "nama": controllerNama.text,
      "merk": controllerMerk.text,
      "jumlah": controllerJumlah.text,
      "harga": controllerHarga.text,
      "tanggal": controllerTanggal.text,
    });
  }

  @override
  void initState() {
    controllerNama =
        new TextEditingController(text: widget.list[widget.index]['nama']);
    controllerMerk =
        new TextEditingController(text: widget.list[widget.index]['merk']);
    controllerJumlah =
        new TextEditingController(text: widget.list[widget.index]['jumlah']);
    controllerHarga =
        new TextEditingController(text: widget.list[widget.index]['harga']);
    controllerTanggal =
        new TextEditingController(text: widget.list[widget.index]['tanggal']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Text("EDIT DATA"),
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
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2045));
                    },
                    decoration: new InputDecoration(
                        hintText: "Tanggal", labelText: "Tanggal Pembelian")),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.lightGreenAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                        msg: "Data Telah di Update",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    setState(() {});
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
