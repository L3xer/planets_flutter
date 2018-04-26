import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() => runApp(new PlanetsApp());

class PlanetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Planets',      
      home: new HomePage()
    );
  }
}
