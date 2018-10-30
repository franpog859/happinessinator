import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(new Happinessinator());

class Happinessinator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Happinessinator',
      home: new HomePage(title: 'Happinessinator'),
    );
  }
}
