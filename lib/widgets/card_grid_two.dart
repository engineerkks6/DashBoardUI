import 'package:anv_live/widgets/card_grid_two_item.dart';
import 'package:flutter/material.dart';

class CardGridTwo extends StatelessWidget {
  const CardGridTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 0.9,
      children: <Widget>[
        CardGridTwoItem(
            img: "https://cdn.onlinewebfonts.com/svg/img_75297.png",
            txt: "E-Commerce"),
        CardGridTwoItem(
            img: "https://cdn.onlinewebfonts.com/svg/img_225861.png",
            txt: "Travel"),
      ],
    );
  }
}
