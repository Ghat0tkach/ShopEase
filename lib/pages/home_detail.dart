// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:project/pages/home_widgets/Add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project/models/catalogue.dart';
import 'package:project/models/catalogue.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalogue;
  const HomeDetailPage({
    Key? key,
    required this.catalogue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.cardColor,
      ),
      backgroundColor: context.theme.cardColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.all(8.0),
        children: [
          "\$${catalogue.price}".text.xl4.bold.make(),
          AddToCart(catalog: catalogue).wh(100, 50),
        ],
      ).p1(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                    tag: Key(catalogue.id.toString()),
                    child: Image.network(catalogue.image))
                .h40(context)
                .p16(),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalogue.name.text.lg
                        .color(context.theme.secondaryHeaderColor)
                        .bold
                        .xl4
                        .make(),
                    catalogue.desc.text
                        .textStyle(context.captionStyle)
                        .bold
                        .color(context.theme.secondaryHeaderColor)
                        .make(),
                    10.heightBox,
                    "loremCillum labore laa quis occaecatirure ad ea. Duis nisi Lorem pariatur eiusmod laboris voluptate adipisicing. Excepteur aliquip eu anim veniam officia. Fugiat magna non excepteur tempor reprehenderit. Fugiat adipisicing ullamco dolore minim eiusmod ut sit aliquip ad irure minim occaecat labore esse. In ut non nisi ad nisi labore consequat ut."
                        .text
                        .bold
                        .textStyle(
                          context.captionStyle,
                        )
                        .color(context.theme.secondaryHeaderColor)
                        .make()
                        .p8(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
