import 'package:flutter/material.dart';

class PlanetSummary extends StatelessWidget {
  final planetThumbnail = new Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
          image: new AssetImage("assets/images/mars.png"),
          height: 92.0,
          width: 92.0));

  final planetCard = new Container(
    height: 124.0,
    margin: EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(.0, 10.0))
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: new Stack(
          children: <Widget>[planetCard, planetThumbnail],
        ));
  }
}
