import 'package:flutter/material.dart';
import 'package:ui_design2/places.dart';

import 'image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCradsState createState() => _ImageCradsState();
}

class _ImageCradsState extends State<ImageCards> {
  List<Place> places = [
    Place(place: 'CN', image: 'd.jpg',),
    Place(place: 'DBMS', image: 'e.jpg',),
    Place(place: 'OOP', image: 'f.jpg', ),
    Place(place: 'MATH', image: 'g.jpg', ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: places.length,
          itemBuilder: (context, index) {
            return ImageCard(
              place: places[index],
              name: places[index].place,
              //days: places[index].days,
              pictures: places[index].image,
            );
          }),
    );
  }
}
