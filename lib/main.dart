import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Conversations',
            style: TextStyle(fontSize: 30, color: Colors.black)),
        actions: [
          TextButton(
            onPressed: () {},
            child: Row(children: [
              Icon(Icons.add, color: Colors.pink),
              Text("Add New")
            ]),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: Colors.grey.shade200),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  icon: Container(
                      margin: EdgeInsets.only(left: 16, right: 0),
                      child: Icon(Icons.search, color: Colors.grey)),
                  hintText: 'Search...'),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 30,
                  ),
                  title: Text("Kriss Benwat"),
                  subtitle: Text("Good to know"),
                  trailing: Text("Today"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 30,
                  ),
                  title: Text("Kriss Benwat"),
                  subtitle: Text("Good to know"),
                  trailing: Text("Today"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 30,
                  ),
                  title: Text("Kriss Benwat"),
                  subtitle: Text("Good to know"),
                  trailing: Text("Today"),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        ],
      ),
    ));
  }
}
