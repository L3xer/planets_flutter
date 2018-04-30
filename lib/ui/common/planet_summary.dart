import 'package:flutter/material.dart';
import 'package:planets_flutter/model/planet.dart';
import 'package:planets_flutter/ui/text_style.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;

  PlanetSummary(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: new Image(
            image: new AssetImage(planet.image), height: 92.0, width: 92.0));

    Widget _planetValue({String text, String image}) {
      return new Container(
          child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(text, style: Style.smallTextStyle)
        ],
      ));
    }

    ;

    final planetCardContent = new Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(planet.name, style: Style.titleTextStyle),
          new Container(height: 10.0),
          new Text(planet.location, style: Style.commonTextStyle),
          new Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      text: planet.distance,
                      image: "assets/images/ic_distance.png")),
              new Expanded(
                  child: _planetValue(
                      text: planet.gravity,
                      image: "assets/images/ic_gravity.png")),
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
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

    return new Container(
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: new Stack(
          children: <Widget>[planetCard, planetThumbnail],
        ));
  }
}
