import "package:flutter/material.dart";
import 'Drawer.dart';

class Home extends StatelessWidget {
  var days = 34;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: const Text("Itne dhyaan se kya dekh rha , gaand dega kya?"),
        ),
      ),
      drawer: MeraDrawer(),
    );
  }
}
