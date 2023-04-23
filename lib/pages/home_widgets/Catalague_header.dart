import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogueHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalogue App"
          .text
          .xl5
          .bold
          .color(context.theme.secondaryHeaderColor)
          .make(),
      "Trending Products".text.xl2.make(),
      const SizedBox(
        height: 10,
      )
    ]);
  }
}
