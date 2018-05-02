import 'package:flutter/material.dart';
import 'package:planets_flutter/model/planet.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Planet Detail'),
        ),
        body: new Container(
          constraints: BoxConstraints.expand(),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(planet.name),
              new Hero(
                  tag: "planet-hero-${planet.id}",
                  child: new Image(
                      image: new AssetImage(planet.image),
                      height: 92.0,
                      width: 92.0))
            ],
          ),
        ));
  }
}
