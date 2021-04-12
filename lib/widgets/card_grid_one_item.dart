import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardGridOneItem extends StatelessWidget {
  String img = "";
  String txt = "";

  CardGridOneItem({
    Key? key,
    required this.img,
    required this.txt,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Image.network(
            img,
            height: 50,
            width: 80,
            fit: BoxFit.fitHeight,
            color: Colors.lightBlue,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 50,
              left: 0,
            ),
            height: 45,
            width: size.width,
            child: Stack(
              children: [
                Text(
                  "${txt}",
                  style: GoogleFonts.mukta(
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
