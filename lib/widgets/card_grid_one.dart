import 'package:anv_live/widgets/card_grid_one_item.dart';
import 'package:flutter/material.dart';

class CardGridOne extends StatelessWidget {
  const CardGridOne({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1,
      children: <Widget>[
        CardGridOneItem(
            size: size,
            img: "https://cdn.onlinewebfonts.com/svg/img_239196.png",
            txt: "Autos(Car)"),
        CardGridOneItem(
            size: size,
            img: "https://cdn.onlinewebfonts.com/svg/img_169126.png",
            txt: "Properties"),
        CardGridOneItem(
            size: size,
            img: "https://cdn.onlinewebfonts.com/svg/img_76179.png",
            txt: "Mobile"),
        CardGridOneItem(
            size: size,
            img: "https://cdn.onlinewebfonts.com/svg/img_453949.png",
            txt: "Jobs"),
      ],
    );
  }
}
