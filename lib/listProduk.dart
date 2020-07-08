import 'package:flutter/material.dart';
import 'package:mobile_apk/detailProduk.dart';

class ListProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          //appbar

          appBar: AppBar(
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "VAPE",
                ),
                Tab(
                  text: "LIQUID",
                )
              ],
            ),
            centerTitle: true,
            title: Text("LIST VAPE DAN LIQUID"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Click  search');
                },
              ),
              // IconButton(
              //   icon: Icon(Icons.add_shopping_cart),
              //   onPressed: () {
              //     print('Click  Shop');
              //   },
              // ),
            ],
          ),
          //body  untuk  content
          //menampilkan  list

          body: TabBarView(children: [
            ListView(
              shrinkWrap: true,

              //padding
              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
              //anggota  dari  list  berupa  widget  children
              children: <Widget>[
                //memanggil  class  Productbox
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "HEXOM V3 ANODIZED MOD",
                        description:
                            "New HexOhm V3.0 memiliki papan milik sendiri yang memiliki peringkat hingga 30 amp dan mampu 180 watt. Beberapa fitur tambahan yang ditambahkan termasuk cutoff tegangan rendah untuk perlindungan baterai, timer cutoff 10 detik dan sakelar hidup / mati utama.",
                        price: "3.000.000 IDR",
                        image: "hexomv3.jpg",
                        star: 5,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "HEXOM V3 ANODIZED MOD",
                    description:
                        "New HexOhm V3.0 memiliki papan milik sendiri yang memiliki peringkat hingga 30 amp dan mampu 180 watt. Beberapa fitur tambahan yang ditambahkan termasuk cutoff tegangan rendah untuk perlindungan baterai, timer cutoff 10 detik dan sakelar hidup / mati utama.",
                    price: "3.000.000 IDR",
                    image: "hexomv3.jpg",
                    star: 5,
                  ),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "AUGVAPE DRUGA FOXY MOD",
                        description:
                            "Augvape Druga Foxy adalah VW Box MOD yang ringkas dengan layar OLED cerah. Itu terbuat dari bahan Zinc Alloy berkualitas tinggi dengan desain melengkung untuk perasaan tangan yang nyaman.",
                        price: "800.000 IDR",
                        image: "foxy2.jpg",
                        star: 4,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "AUGVAPE DRUGA FOXY MOD",
                      description:
                          "Augvape Druga Foxy adalah VW Box MOD yang ringkas dengan layar OLED cerah. Itu terbuat dari bahan Zinc Alloy berkualitas tinggi dengan desain melengkung untuk perasaan tangan yang nyaman.",
                      price: "800.000 IDR",
                      image: "foxy2.jpg",
                      star: 4),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "VAPOR STORM ECO KIT",
                        description:
                            "Vapor Storm ECO RDA vape kit Electronic Cigarette 90W Mod Lion RDA Tank vaporizer Black.",
                        price: "300.000 IDR",
                        image: "eco.jpg",
                        star: 3,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "VAPOR STORM ECO KIT",
                      description:
                          "Vapor Storm ECO RDA vape kit Electronic Cigarette 90W Mod Lion RDA Tank vaporizer Black.",
                      price: "300.000 IDR",
                      image: "eco.jpg",
                      star: 3),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "GEEK VAPE - AEGIS X KIT 200W",
                        description:
                            "Aegis X Kit produk terbaru oleh Geek Vape adalah mod kotak 200W TC adalah versi yang ditingkatkan dari The Aegis Legend Mod asli dengan layar OLED 1,4 incs yang besar.",
                        price: "650.000 IDR",
                        image: "aegisx.jpg",
                        star: 4,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "GEEK VAPE - AEGIS X KIT 200W",
                      description:
                          "Aegis X Kit produk terbaru oleh Geek Vape adalah mod kotak 200W TC adalah versi yang ditingkatkan dari The Aegis Legend Mod asli dengan layar OLED 1,4 incs yang besar.",
                      price: "650.000 IDR",
                      image: "aegisx.jpg",
                      star: 4),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                          name: "GEEK VAPE - AEGIS LEGEND 200W",
                          description:
                              "Aegis Legend 200w mod, adalah karya agung yang baru dirilis oleh Geekvape. Mewarisi fitur tahan air, tahan guncangan dan tahan debu dari Aegis Mod sebelumnya, Legenda Aegis dibangun dengan hingga enam bahan berbeda untuk mencapai portabilitas dan daya tahan yang ekstrem, menjadikannya salah satu mod kotak paling kompleks di industri.",
                          price: "700.000 IDR",
                          image: "aegislegend.jpg",
                          star: 4),
                    ));
                  },
                  child: ProductBox(
                      name: "GEEK VAPE - AEGIS LEGEND 200W",
                      description:
                          "Aegis Legend 200w mod, adalah karya agung yang baru dirilis oleh Geekvape. Mewarisi fitur tahan air, tahan guncangan dan tahan debu dari Aegis Mod sebelumnya, Legenda Aegis dibangun dengan hingga enam bahan berbeda untuk mencapai portabilitas dan daya tahan yang ekstrem, menjadikannya salah satu mod kotak paling kompleks di industri.",
                      price: "700.000 IDR",
                      image: "aegislegend.jpg",
                      star: 4),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              //padding
              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
              //anggota  dari  list  berupa  widget  children
              children: <Widget>[
                //memanggil  class  Productbox
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "American Breakfast V1",
                        description:
                            "Liquid Terbaru dari kolaborasi antara R57 x JVP (JualVape) - American Breakfast V1",
                        price: "185.000 IDR",
                        image: "abv1.jpg",
                        star: 3,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "American Breakfast V1",
                    description: "New Liquid",
                    price: "185.000 IDR",
                    image: "abv1.jpg",
                    star: 3,
                  ),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "American Breakfast V2",
                        description:
                            "Liquid Terbaru dari American Breakfast V1 - R57 x JVP (JualVape) - American Breakfast V2",
                        price: "185.000 IDR",
                        image: "abv2.jpg",
                        star: 4,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "American Breakfast V2",
                    description: "New Liquid American Breakfast V2",
                    price: "185.000 IDR",
                    image: "abv2.jpg",
                    star: 4,
                  ),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Oat Drips",
                        description:
                            "Oat Milk Cereal dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG By Steam Queen Juice X JVS",
                        price: "185.000 IDR",
                        image: "odv1.png",
                        star: 5,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "Oat Drips",
                    description:
                        "Oat Milk Cereal dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG",
                    price: "185.000 IDR",
                    image: "odv1.png",
                    star: 5,
                  ),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Oat Drips Mung Bean V2",
                        description:
                            "Oat Milk dan Kacang Hijau dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG By Steam Queen Juice X JVS",
                        price: "185.000 IDR",
                        image: "odv2.jpg",
                        star: 4,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "Oat Drips Mung Bean V2",
                    description:
                        "Oat Milk dan Kacang Hijau dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG",
                    price: "185.000 IDR",
                    image: "odv2.jpg",
                    star: 4,
                  ),
                ),

                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Oat Drips Banana V3",
                        description:
                            "Oat Milk Cereal dan Pisang dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG By Steam Queen Juice X JVS",
                        price: "185.000 IDR",
                        image: "odv3.jpg",
                        star: 5,
                      ),
                    ));
                  },
                  child: ProductBox(
                    //berisi  parameter  yang  diperlukan  di  class  ProductBox
                    name: "Oat Drips Banana V3",
                    description:
                        "Oat Milk Cereal dan Pisang dengan botol ukuran 100ml dan pilihan Nicotine : 3MG & 6MG",
                    price: "185.000 IDR",
                    image: "odv3.jpg",
                    star: 5,
                  ),
                ),
              ],
            )
          ])),
    );
  }
}

//menggunakan  widget  StatelessWidget
class ProductBox extends StatelessWidget {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
  final String name;
  final String description;
  final String price;
  final String image;
  final int maxBintang = 5;
  final int star;

  Widget build(BuildContext context) {
//menggunakan  widget  container
    return Container(
//padding
        padding: EdgeInsets.all(2),
        //  height:  120,
        //menggunakan  widget  card
        child: Card(
            //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children  digunakan  untuk  menampung  banyak  widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/$image",
                width: 150,
              ),
              Expanded(
                  //child  digunakan  untuk  menampung  satu  widget
                  child: Container(
                      padding: EdgeInsets.all(1),
                      //membuat  tampilan  secara  vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini  isi  tampilan  vertikal  tersebut
                        children: <Widget>[
                          //menampilkan  variabel  menggunakan  widget  text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price:  " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan  widget  icon    dibungkus  dengan  row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  for (int i = 0; i < star; i++)
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.deepOrange,
                                    ),
                                  for (int i = 0; i < maxBintang - star; i++)
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.grey,
                                    ),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
