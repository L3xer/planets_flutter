import 'package:flutter/material.dart';
import 'package:planets_flutter/model/planet.dart';
import 'package:planets_flutter/ui/text_style.dart';
import 'package:planets_flutter/ui/common/planet_summary.dart';


class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(        
        body: new Container(
          constraints: BoxConstraints.expand(),
          color: new Color(0xFF736AB7),
          child: new Stack(
            children: <Widget>[
              _getBackground(),
              _getGradient(),
              _getContent(),
              _getToolbar(context)
            ],
          ),
        ));
  }

  Widget _getBackground() {
    return new Container(
        child:
            new Image.network(planet.picture, fit: BoxFit.cover, height: 300.0),
        constraints: BoxConstraints.expand(height: 295.0));
  }

  Widget _getGradient() {
    return new Container (
        margin: EdgeInsets.only(top: 190.0),
        height: 110.0,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: <Color>[
              new Color(0x00736AB7),
              new Color(0xFF736AB7)
            ],
            stops: [0.0, 0.9],
            begin: new FractionalOffset(0.0, 0.0),
            end: new FractionalOffset(0.0, 1.0)
          )
        ),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();

    return new ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetSummary(planet, horizontal: false),
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_overviewTitle, style: Style.headerTextStyle),
              new Text(planet.description, style: Style.commonTextStyle)
            ],
          ),
        )
      ],
    );
  }

  Widget _getToolbar(BuildContext context){
      return new Container(
        margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: new BackButton(color: Colors.white),
      );
  }
}
