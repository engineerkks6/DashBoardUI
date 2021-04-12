import 'package:anv_live/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.1,
      mainAxisSpacing: 10,
      children: <Widget>[
        CardItem(
            img: "https://cdn.onlinewebfonts.com/svg/img_424178.png",
            txt: "LiveTv"),
        CardItem(
            img: "https://cdn.onlinewebfonts.com/svg/img_466122.png",
            txt: "OTT"),
        CardItem(
            img: "https://cdn.onlinewebfonts.com/svg/img_94516.png",
            txt: "Magazines"),
      ],
    );
  }
}
