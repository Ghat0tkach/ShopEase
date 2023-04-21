import "package:flutter/material.dart";

import 'package:flutter/material.dart';

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
          child: Text("I  $days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
