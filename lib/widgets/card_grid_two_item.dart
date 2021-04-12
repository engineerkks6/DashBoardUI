import 'package:anv_live/config/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CardGridTwoItem extends StatelessWidget {
  String img = "";
  String txt = "";

  CardGridTwoItem({
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
              padding: EdgeInsets.only(top: 5.0),
              child: Image.network(
                img,
                height: 68,
                width: 100,
                fit: BoxFit.fitHeight,
                color: Colors.lightBlue,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 70,
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
