import 'package:flutter/material.dart';
import './detailproduk.dart';

class ListProduk extends StatefulWidget {
  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Product List"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Sell Account Character *5",
                  description: "Limited or Standar Banner",
                  price: 100000,
                  image: "paimon.png",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Sell Account Character *5",
                description: "Limited or Standar Banner",
                price: 100000,
                image: "paimon.png",
                star: 5,
                ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Gnostic",
                  description: "Gnostic Hymm or Chorus",
                  price: 200000,
                  image: "gnostic.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "Gnostic",
                description: "Gnostic Hymm or Chorus",
                price: 200000,
                image: "gnostic.jpg",
                star: 4
                ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Welkin Moon",
                  description: "Welkin Moon Blessing 30 days",
                  price: 79000,
                  image: "welkin.png",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "Welkin Moon",
                description: "Welkin Moon Blessing 30 days",
                price: 79000,
                image: "welkin.png",
                star: 4),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
