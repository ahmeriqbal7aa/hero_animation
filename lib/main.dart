import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hero Animation"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Hero(
        tag: "shield",
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ImageView()));
          },
          child: Container(
            padding: EdgeInsets.only(top: 20.0, left: 20.0),
            child: CircleAvatar(
              maxRadius: 30.0,
              backgroundImage: AssetImage("images/shield.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("images/shield.png"),
      ),
    );
  }
}
