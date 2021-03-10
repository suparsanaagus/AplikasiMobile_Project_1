import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  DetailProduk(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;

  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow,
      ));
    }
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("${widget.name}"),
      ),
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimages/" + widget.image)
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xfff44336), const Color(0xfff44336)],
              )),
              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                  new Container(
                    child: new Text(
                      this.widget.price.toString(),
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.description),
            )
          ],
        ),
      ),
    );
  }
}
