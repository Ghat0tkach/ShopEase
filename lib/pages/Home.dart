// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:project/pages/home_widgets/catalogue_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:project/pages/home_widgets/Catalague_header.dart';
import 'package:project/Themes.dart';
import 'package:project/models/catalogue.dart';
import 'package:project/widgets/Item_widget.dart';
import "package:project/utils/Routes.dart";
import 'package:project/pages/Cart_page.dart';
import '../Drawer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("Assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    var newItems = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    CatalogueModel.items.addAll(newItems);

    // CatalogueModel.items = List.from(productsData)
    //     .map<Item>((item) => Item.fromMap(item))
    //     .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = CartTotal();
    //   final dummylist = List.generate(5, (index) => CatalogueModel.items[0]);
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        backgroundColor: context.cardColor,
        child: const Icon(CupertinoIcons.cart),
      ).badge(),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogueHeader(),
            if (CatalogueModel.items.isNotEmpty)
              CatalogueList().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ]),
        ),
      ),
    );
  }
}
