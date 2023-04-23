// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project/pages/home_widgets/Add_to_cart.dart';

import 'package:project/pages/home_detail.dart';

import '../../models/catalogue.dart';

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogueModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogueModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalogue: catalog))),
            child: CatalogueItem(catalog: catalog));
      },
    );
  }
}

class CatalogueItem extends StatelessWidget {
  final Item catalog;
  const CatalogueItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogueImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg
                .color(Color.fromARGB(255, 20, 19, 19))
                .bold
                .xl
                .make(),
            catalog.desc.text
                .textStyle(context.captionStyle)
                .color(context.theme.secondaryHeaderColor)
                .bold
                .make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.all(8.0),
              children: [
                Row(
                  children: [
                    Text(
                      "\$${catalog.price}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                AddToCart(catalog: catalog)
              ],
            ),
          ],
        ))
      ],
    )).color(context.canvasColor).rounded.square(150).make().py16().px16();
  }
}

class CatalogueImage extends StatelessWidget {
  final String image;
  const CatalogueImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.theme.cardColor).make().p16().w40(
          context,
        );
  }
}
