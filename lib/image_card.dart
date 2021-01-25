import 'package:flutter/material.dart';
import 'package:ui_design2/places.dart';

import 'details.dart';

class ImageCard extends StatelessWidget {
  final String name;
  final int days;
  final String pictures;
  final Place place;

  ImageCard({this.place, this.days, this.name, this.pictures});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Details(place)));
          },
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(62, 158, 174, 201),
                  offset: Offset(0, 9),
                  blurRadius: 14)
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(children: [
                Image.asset(
                  "images/$pictures",
                  height: 180,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '$name',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500))
                        ]),
                      ),
                    ),
                  ),
                ),
                /*Positioned(
                    bottom: 10,
                    left: 5,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$days days',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ))*/
              ]),
            ),
          )),
    );
    throw UnimplementedError();
  }
}
