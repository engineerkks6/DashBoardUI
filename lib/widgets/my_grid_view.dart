import 'package:anv_live/widgets/item.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      // padding: EdgeInsets.all(6),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.9,
        crossAxisSpacing: 10,
      ),
      children: [
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_3963.png",
            txt: "Sale"),
        Item(
          img: "https://cdn.onlinewebfonts.com/svg/img_377675.png",
          txt: "Purchase",
        ),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_75143.png",
            txt: "Shoping"),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_66063.png",
            txt: "Hotel"),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_543553.png",
            txt: "Hosting"),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_529536.png",
            txt: "Delhi"),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_529714.png",
            txt: "Movie"),
        Item(
            img: "https://cdn.onlinewebfonts.com/svg/img_162407.png",
            txt: "Affiliatess"),
      ],
    );
  }
}
