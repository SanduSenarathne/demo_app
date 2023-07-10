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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'More',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 35,
                        ),
                      ]),
                  value: 'more',
                ),
              ];
            },
            color: Color.fromARGB(255, 123, 123, 123),
            onSelected: (value) {
              if (value == 'more') {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    MediaQuery.of(context).size.width - 150,
                    kToolbarHeight,
                    0,
                    0,
                  ),
                  items: [
                    PopupMenuItem(
                      child: Text(
                        'Report',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'report',
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Block',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'block',
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Clear chat',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'clear',
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Export chat',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'export',
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Add shortcut',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'shortcut',
                    ),
                  ],
                  color: Color.fromARGB(255, 123, 123, 123),
                );
              }
            },
          ),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            color: Colors.black,
            //Chat message code
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 32, 32, 32),
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(200, 67, 67, 67),
                width: 0.5,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Message',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(200, 67, 67, 67),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  //handle send button function
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
