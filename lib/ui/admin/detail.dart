import 'package:mobile_apk/ui/admin/homeAdmin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './editData.dart';
import 'package:http/http.dart' as http;

class Detail extends StatefulWidget {
  final List list;
  final int index;
  Detail({this.index, this.list});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  void confirm(id) {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Anda ingin menghapus data ini?"),
      actions: <Widget>[
        new RaisedButton(
          child: new Text("Confirm"),
          color: Colors.red[400],
          onPressed: () {
            deletePenjualan(id);
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Home(),
            ));
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
        new RaisedButton(
          child: new Text("Cancel"),
          color: Colors.lightBlueAccent,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("${widget.list[widget.index]['nama']}"),
      ),
      body: new Container(
          height: 250.0,
          padding: const EdgeInsets.all(20.0),
          child: new Card(
            child: new Center(
                child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['nama'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Text(
                  "Produk : ${widget.list[widget.index]['merk']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Harga : ${widget.list[widget.index]['harga']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Jumlah : ${widget.list[widget.index]['jumlah']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Tanggal : ${widget.list[widget.index]['tanggal']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text("Edit"),
                      color: Colors.lightBlueAccent,
                      onPressed: () => Navigator.of(context)
                          .pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => new EditData(
                          list: widget.list,
                          index: widget.index,
                        ),
                      )),
                    ),
                  ],
                )
              ],
            )),
          )),
    );
  }

  Future<http.Response> deletePenjualan(id) async {
    final http.Response response = await http
        .delete("http://192.168.43.160/mobile_apk/index.php/Penjualan/$id");

    return response;
  }
}
