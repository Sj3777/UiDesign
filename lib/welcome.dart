import 'package:flutter/material.dart';
import 'home.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/adv5.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.025),
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8),
                child: Container(),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Enjoy the world",
                textScaleFactor: 1,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 6,),
              Text(
                "Your Journey is waiting for you \n     let's explore the soul of life",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 36,),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),

        ],
      ),
    );
  }
}
