import 'package:flutter/material.dart';
import 'package:sudais_frontend/gridView/gridView_builder.dart';
import 'package:sudais_frontend/listTile.dart';
import 'package:sudais_frontend/login.dart';
import 'package:sudais_frontend/tab_bar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> screenList = [
    TabBarScreen(),
    GridviewBuilder(),
    LoginScreen(),
    ListTileScreen()
  ];
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
          iconSize: 20,
          elevation: 0,
          type: BottomNavigationBarType.shifting,
          onTap: (value){
          setState(() {
            selectedScreen = value;
          });
          },
          currentIndex: selectedScreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat_sharp),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: "Update"),
            BottomNavigationBarItem(icon: Icon(Icons.groups),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
          ]),
    );
  }
}
