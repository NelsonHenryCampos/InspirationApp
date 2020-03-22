import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ArtPage extends StatefulWidget {
  ArtPage({Key key}) : super(key: key);

  @override
  _ArtPageState createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Back',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Gilroy',
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFF3644),
            ),
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 0,
            child: Hero(
              tag: 'hero',
              child: Image.asset(
                'assets/images/art.png',
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    
                    height: 5,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadiusDirectional.circular(50)
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Surrealism New Series', style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'GilroyBlack'
                    ),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
