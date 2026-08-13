import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Chats"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)
                  ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                     Tab(icon: Icon(Icons.all_inbox),text: "All",),
                     Tab(icon: Icon(Icons.mark_chat_unread),text: "Unread",),
                     Tab(icon: Icon(Icons.groups),text: "Groups",),
                     Tab(icon: Icon(Icons.favorite),text: "Favorite",),
                    ]),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Center(child: Column(
                children: [
                  Text("All Chats",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading:
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/first.jpg"),
                            ),
                            title: Text("Ali"),
                            subtitle: Text("Hello"),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),),
              Center(child: Column(
                children: [
                  Text("All Unread Chats",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading:
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/first.jpg"),
                            ),
                            title: Text("Ali"),
                            subtitle: Text("Hello"),
                            trailing: Text("Unread"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),),
              Center(child: Column(
                children: [
                  Text("All Groups",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading:
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/first.jpg"),
                            ),
                            title: Text("Ali"),
                            subtitle: Text("Hello"),
                            trailing: Text("Groups"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),),
              Center(child: Column(
                children: [
                  Text("All Favorite",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading:
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/first.jpg"),
                            ),
                            title: Text("Ali"),
                            subtitle: Text("Hello"),
                            trailing: Text("Favorite"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),),
            ]),
      ),
    );
  }
}
