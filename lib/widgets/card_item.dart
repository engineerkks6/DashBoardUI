import 'package:anv_live/config/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  String img = "";
  String txt = "";

  CardItem({
    Key? key,
    required this.img,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: MyColor.background,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Image.network(
                img,
                height: 65,
                width: 100,
                fit: BoxFit.fitHeight,
                color: Colors.blue,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 78,
                left: 0,
              ),
              height: 30,
              child: Stack(
                children: [
                  Text(
                    "${txt}",
                    style: GoogleFonts.mukta(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
