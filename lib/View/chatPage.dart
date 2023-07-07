import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chat_info.dart';

class ChatController extends GetxController {
  // Add your controller logic here
}

class ChatPage extends StatelessWidget {
  final ChatController controller;

  const ChatPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chatData = [
      {
        'name': 'Person 1',
        'icon': Icons.person,
      },
      {
        'name': 'Person 2',
        'icon': Icons.person,
      },
      {
        'name': 'Person 3',
        'icon': Icons.person,
      },
      {
        'name': 'Person 4',
        'icon': Icons.person,
      },
      {
        'name': 'Person 5',
        'icon': Icons.person,
      },
      {
        'name': 'Person 6',
        'icon': Icons.person,
      },
      {
        'name': 'Person 7',
        'icon': Icons.person,
      },
      {
        'name': 'Person 8',
        'icon': Icons.person,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Scrollbar(
            child: ListView.separated(
              separatorBuilder: (context, child) => Divider(
                height: 1,
              ),
              padding: EdgeInsets.all(0.0),
              itemCount: chatData.length,
              itemBuilder: (context, i) {
                final person = chatData[i];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatInfo(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.black,
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            person['icon'],
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          person['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(37, 211, 101, 0.719),
              ),
              child: Icon(Icons.message, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
