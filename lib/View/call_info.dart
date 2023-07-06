import 'package:flutter/material.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0.0,
        title: Text(
          'Call info',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Remove from call log',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'remove',
                ),
                PopupMenuItem(
                  child: Text(
                    'Block',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'block',
                ),
              ];
            },
            color: Color.fromARGB(255, 123, 123, 123),
          ),
        ],
      ),
    );
  }
}
