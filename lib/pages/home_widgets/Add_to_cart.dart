import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import "package:flutter/material.dart";
import 'package:project/models/cart.dart';
import 'package:project/models/catalogue.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isinCart = cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isinCart) {
          isinCart = isinCart.toggle();
          final catalog = CatalogueModel();

          cart.catalog = catalog;
          cart.add(widget.catalog);

          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all((context.theme.cardColor)),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isinCart
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
