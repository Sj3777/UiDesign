import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/icon_card.dart';
import 'package:ui_design2/images_cards.dart';

import 'image_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Civil Engineer",
          style: TextStyle(
            fontFamily: "RobotoSlab",
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 18,
          onPressed: (){

          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){},iconSize: 18,color: Colors.black,),
          IconButton(icon: Icon(Icons.notifications_active),onPressed: (){}, iconSize: 18,color: Colors.black,)
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Hello, ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.pink[300])),
                      TextSpan(
                          text: '\nSudhakar',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 5000.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('images/EduRev.jpg'),
                        fit: BoxFit.fill
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconCard(
                    iconData: Icons.video_call_outlined,
                    text: "Docs & Videos",
                  ),
                  IconCard(
                    iconData: Icons.table_rows_outlined,
                    text: "Tests",
                  ),
                  IconCard(
                    iconData: Icons.edit_location_outlined,
                    text: "Courses",
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "All of Sudhakar's Courses",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    )),
                IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                    color: Colors.black,
                    onPressed: () {}),
              ]),
              SizedBox(
                height: 10,
              ),
              ImageCards(),
              //SizedBox(height: 25,),
            ],
          ),
        ),
      ),bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text('Learn'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.chat),
          title: new Text('Discuss'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
        )
      ],
    ),
     /* bottomNavigationBar: BottomNavigationBar(
        height: 60,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
      items: <Widget>[
        Icon(Icons.search,color:Colors.black,size: 20,),
        BottomNavigationBarItem(icon: new Icon(Icons.search)),
        Icon(Icons.favorite_border,color:Colors.black,size: 20,),
        Icon(Icons.person_outline,color:Colors.black,size: 20,),
        Icon(Icons.settings,color:Colors.black,size: 20,),
        BottomNavigationBarItem(icon: null)
      ],
      animationDuration: Duration(
        milliseconds: 200
      ),
      onTap: (index) {
      },
    )*/
    );
  }
}
