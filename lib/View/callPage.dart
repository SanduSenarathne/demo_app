import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'call_info.dart';

class CallsController extends GetxController {
  // Add your controller logic here
}

enum CallType {
  audio,
  video,
}

class CallerPage extends StatelessWidget {
  final CallsController controller;

  const CallerPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> statusData = [
      {
        'name': 'Person 1',
        'time': 'Today, 6:58 am',
        'icon': Icons.person,
        'action': Icons.call_received,
        'callType': CallType.video,
      },
      {
        'name': 'Person 3',
        'time': 'Yesterday, 8:47 pm',
        'icon': Icons.person,
        'action': Icons.call_made,
        'callType': CallType.audio,
      },
      {
        'name': 'Person 1',
        'time': 'Yesterday, 6:58 pm',
        'icon': Icons.person,
        'action': Icons.call_received,
        'callType': CallType.video,
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
              itemCount: statusData.length,
              itemBuilder: (context, i) {
                final person = statusData[i];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CallInfo(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Row(
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  person['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  person['time'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 40,
                          right: 8,
                          child: Icon(
                            person['callType'] == CallType.audio
                                ? Icons.call
                                : Icons.videocam,
                            size: 24,
                            color: Color.fromRGBO(37, 211, 102, 1.0),
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
              child: Icon(Icons.call, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
