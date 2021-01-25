import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/places.dart';
import 'package:ui_design2/image_card.dart';
import 'package:ui_design2/images_cards.dart';

class Details extends StatelessWidget {
  final Place place;

  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Image.asset(
                    'images/${place.image}',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${place.days} days",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "${place.place}\n",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      TextSpan(
                          text:
                              "France, in Western Europe, encompasses medieval cities.Paris, its capital, is famed for its fashion houses,classical art museums including the Louvre and monuments like the Eiffel Tower.The country is also renowned for its wines and sophisticated cuisine. Lascaux’s ancient cave drawings, Lyon’s Roman theater and the vast Palace of Versailles attest to its rich history. ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))
                    ]),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      color: Colors.pinkAccent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Price\n',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                                text: '\$300',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400)),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 19),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(1, 1))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Book a tour ",
                              style: TextStyle(
                                  color: Colors.pinkAccent, fontSize: 14),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
              top: 30,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
