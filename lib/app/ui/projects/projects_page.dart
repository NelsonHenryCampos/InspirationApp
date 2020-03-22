import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inspire/app/ui/art/art_page.dart';

class ProjectPage extends StatefulWidget {
  ProjectPage({Key key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF274BE9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Back',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Gilroy',
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Text(
              '4.95',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.star,
              color: Color(0xFFFF3644),
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 20, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/popular.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
                        alignment: Alignment.center,
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2, 20, 2),
                        child: Text(
                          'Jeremy Booth',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'GilroyBlack',
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2, 20, 2),
                        child: Text(
                          '#Pop art #OpArt',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'GilroyBlack',
                              color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 30, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Projects',
                              style: TextStyle(
                                fontFamily: 'GilroyBlack',
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 5,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFCCD0D7),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFCCD0D7),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 20, 30),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '48 projects',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 16,
                          color: Color(0xFFCCD0D7),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              'assets/images/project_1.png',
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => ArtPage()));
                            },
                            child: Hero(
                              tag: 'hero',
                              child: Container(
                                child: Image.asset(
                                  'assets/images/project_2.png',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 10, 20, 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'About',
                        style:
                            TextStyle(fontSize: 24, fontFamily: 'GilroyBlack'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 10, 20, 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Studio Booth is a creative house with a\nfocus in illustration and logo design.\nMy philosophy is to create bold\nillustrations an+d strong brands that\ncommunicate well and are o++',
                        style: TextStyle(fontSize: 16, fontFamily: 'Gilroy'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40,
              constraints: BoxConstraints(
                minWidth: 100,
                maxWidth: 180,
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFFF3644),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Text(
                          '235k',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Text(
                      '+ Follow',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(Icons.add),
            ),
            Container(
              child: Icon(Icons.mail_outline),
            ),
          ],
        ),
      ),
    );
  }
}
