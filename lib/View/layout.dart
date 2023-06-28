import 'package:flutter/material.dart';
import 'callPage.dart';
import 'chatPage.dart';
import 'statusPage.dart';

class LayoutPage extends StatelessWidget {
  LayoutPage({Key? key}) : super(key: key);

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Chats'),
    const Tab(text: 'Status'),
    const Tab(text: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 32, 32, 32),
          title: Row(
            children: [
              Text(
                'WhatsApp Demo',
                style: TextStyle(
                  color: Color.fromARGB(255, 183, 181, 181),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {},
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text(
                      'New group',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'newgroup',
                  ),
                  PopupMenuItem(
                    child: Text(
                      'New broadcast',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'newbroadcast',
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Linked devices',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'linked_dev',
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Starred messages',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'starmessages',
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'settings',
                  ),
                ];
              },
              color: Color.fromARGB(255, 99, 99, 99),
            ),
          ],
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: const Color.fromRGBO(37, 211, 102, 1.0),
            unselectedLabelColor: Colors.grey,
            labelColor: Color.fromRGBO(37, 211, 102, 1.0),
            labelStyle: TextStyle(fontSize: 18.0),
          ),
        ),
        body: TabBarView(
          children: [
            // Chat screen
            ChatPage(),
            // Status screen
            StatusPage(),
            // Calls screen
            CallerPage(),
          ],
        ),
      ),
    );
  }
}
