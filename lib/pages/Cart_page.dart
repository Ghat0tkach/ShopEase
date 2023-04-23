import 'package:flutter/material.dart';
import 'package:project/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      appBar: AppBar(
        backgroundColor: context.cardColor,
        title: "Cart".text.xl4.bold.make(),
      ),
      body: Column(
        children: [
          CartList().expand(),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalPrice}".text.xl5.color(context.theme.hintColor).make(),
          20.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: "The Developer was way too lazy to implement buying"
                      .text
                      .color(context.theme.primaryColor)
                      .bold
                      .make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.hintColor),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: "Buy".text.bold.color(context.theme.primaryColor).make(),
          ).wh(100, 50),
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return cart.items.isEmpty
        ? "No items added yet".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  onPressed: () {
                    cart.remove(cart.items[index]);

                    setState(() {});
                  },
                  icon: Icon(Icons.remove_circle_outline),
                ),
                title: cart.items[index].name.text.make(),
              );
            },
          );
  }
}
