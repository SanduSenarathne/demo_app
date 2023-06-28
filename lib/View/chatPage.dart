import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Chat Page',
          style: TextStyle(
            color: Color.fromARGB(255, 183, 181, 181),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
