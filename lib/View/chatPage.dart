import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  // Add your controller logic here
}

class ChatPage extends StatelessWidget {
  final ChatController controller;

  const ChatPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> personData = [
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
    ];

    return Container(
      color: Colors.black,
      child: Scrollbar(
        child: ListView.separated(
          separatorBuilder: (context, child) => Divider(
            height: 1,
          ),
          padding: EdgeInsets.all(0.0),
          itemCount: personData.length,
          itemBuilder: (context, i) {
            final person = personData[i];
            return Container(
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
            );
          },
        ),
      ),
    );
  }
}
