import 'package:anv_live/config/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatelessWidget {
  String img = "";
  String txt = "";

  Item({
    Key? key,
    required this.img,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(22.0),
          child: Image.network(
            img,
            height: 65,
            width: 80,
            fit: BoxFit.fitHeight,
            color: Colors.blueAccent,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 70,
            left: 25,
          ),
          height: 35,
          width: size.width,
          child: Stack(
            children: [
              Text(
                "${txt}",
                style: GoogleFonts.mukta(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
