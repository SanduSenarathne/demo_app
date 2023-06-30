import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        'name': 'Person 3',
        'time': 'Yesterday, 8:47 pm',
        'icon': Icons.person,
        'callType': CallType.audio,
      },
      {
        'name': 'Person 1',
        'time': 'Yesterday, 6:58 pm',
        'icon': Icons.person,
        'callType': CallType.video,
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
          itemCount: statusData.length,
          itemBuilder: (context, i) {
            final person = statusData[i];
            return Container(
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
            );
          },
        ),
      ),
    );
  }
}
