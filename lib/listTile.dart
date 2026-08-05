import 'package:flutter/material.dart';
import 'package:sudais_frontend/models/chatList.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  List<ChatList> chatList = [
    ChatList(name: "Sudais", message: 'Hello', date: '8/5/2026',),
    ChatList(name: "Ali", message: 'Hello, How are you', date: '5/7/2026',),
    ChatList(name: "Ahmed", message: 'How are you', date: '12/6/2026',),
    ChatList(name: "Hamza", message: 'Where are you', date: '11/30/2026',),
    ChatList(name: "Abdullah", message: ' Im Good', date: '8/15/2026',),
    ChatList(name: "Tahir", message: 'Hello', date: '8/20/2026',),
    ChatList(name: "Haris", message: 'Hi', date: '10/5/2026',),
    ChatList(name: "Waseem", message: 'What?', date: '10/12/2026',),
    ChatList(name: "Moheeb", message: 'Hello', date: '12/15/2026',),
    ChatList(name: "Babar", message: 'Hey', date: '6/21/2026',),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white70,
            child: ListTile(
              leading: Icon(Icons.person),
              // CircleAvatar(
              //   radius: 20,
              //   backgroundImage: AssetImage("assets/images/first.jpg"),
              // ),
              title: Text(chatList[index].name.toString()),
              subtitle: Text(chatList[index].message.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(chatList[index].date.toString()),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
