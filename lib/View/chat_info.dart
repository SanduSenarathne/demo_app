import 'package:flutter/material.dart';

class ChatInfo extends StatelessWidget {
  const ChatInfo({Key? key}) : super(key: key);

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
          'Person Name',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.video_call,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
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
                    'View Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'view',
                ),
                PopupMenuItem(
                  child: Text(
                    'Media, links, and Docs',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'mld',
                ),
                PopupMenuItem(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'Search',
                ),
                PopupMenuItem(
                  child: Text(
                    'Mute Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'mute',
                ),
                PopupMenuItem(
                  child: Text(
                    'Disappearing messages',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'disappearing',
                ),
                PopupMenuItem(
                  child: Text(
                    'Wallpaper',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'wallpaper',
                ),
                PopupMenuItem(
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: 'more',
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
