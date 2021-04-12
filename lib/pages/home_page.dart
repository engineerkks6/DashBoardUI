import 'package:anv_live/config/my_color.dart';
import 'package:anv_live/widgets/card_grid.dart';
import 'package:anv_live/widgets/card_grid_one.dart';
import 'package:anv_live/widgets/card_grid_two.dart';
import 'package:anv_live/widgets/my_bottom.dart';
import 'package:anv_live/widgets/my_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  List<String> images = [
    "https://i.postimg.cc/3N6mLqS6/Screenshot-2021-03-30-030932.png",
    "https://i.postimg.cc/3N6mLqS6/Screenshot-2021-03-30-030932.png",
    "https://i.postimg.cc/3N6mLqS6/Screenshot-2021-03-30-030932.png",
    // "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    // "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.secondaryBackground,
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: MyColor.primarybackground,
        title: Text(
          "ANV Live",
          style: GoogleFonts.mukta(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: MyColor.background,
          ),
        ),
        // leading: Icon(
        //   Icons.menu,
        //   size: 34,
        //   color: Colors.white,
        // ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_location,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: MyBottom(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // First Row
          Container(
            margin: EdgeInsets.only(top: 0),
            width: size.width,
            height: 184,
            child: MyGridView(),
          ),
          // Second Row
          Container(
            margin: EdgeInsets.only(top: 6),
            width: size.width,
            height: 109,
            // color: Colors.white,
            child: CardGrid(),
          ),
          // Third row
          Container(
            margin: EdgeInsets.only(top: 2.0),
            width: size.width,
            height: 100,
            child: Card(
              elevation: 2.0,
              shadowColor: MyColor.background,
              child: CardGridOne(size: size),
            ),
          ),
          // 4th Row
          Container(
              margin: EdgeInsets.only(top: 2),
              width: size.width,
              height: 100,
              child: CardGridTwo()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 45,
        ),
      ),
    );
  }
}
