import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _catUrl = 'https://24.media.tumblr.com/qgIb8tERiqpi9szcqwY6vCc9o1_500.jpg';

  void _setCatUrl() async {
    setState(() {
      http.get('https://api.thecatapi.com/v1/images/search?format=json')
          .then((res) => json.decode(res.body.toString()))
          .then((res) => _catUrl = res[0]['url']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black26,
        body: new Center (
            child: GestureDetector(
              onTap: () {
                _setCatUrl();
              },
              child: Image.network(
                _catUrl,
              ),
            )
        )
    );
  }
}
