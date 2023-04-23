// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MeraDrawer extends StatelessWidget {
  const MeraDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: const Color.fromARGB(255, 221, 214, 214),
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 214, 214),
                ),
                margin: EdgeInsets.zero,
                accountName: Text("your name"),
                accountEmail: Text("yourEmail@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1616166330003-8e1b0e2b0b0a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email me"),
          ),
        ],
      ),
    ));
  }
}
