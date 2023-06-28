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
    return Scaffold(
      body: Center(
        child: Text(
          'Loading Chat Page',
          style: TextStyle(
            color: Color.fromARGB(255, 183, 181, 181),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
