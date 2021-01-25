import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconCard({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(
                iconData,
                size: 30,
                color: Colors.pink[400],
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
