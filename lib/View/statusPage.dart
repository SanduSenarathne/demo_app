import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'create_statusPage.dart';

class StatusController extends GetxController {
  // Add your controller logic here
}

class StatusPage extends StatelessWidget {
  final StatusController controller;

  const StatusPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> statusData = [
      {
        'name': 'Person 1',
        'time': 'Yesterday, 8:47 pm',
        'icon': Icons.person,
      },
      {
        'name': 'Person 2',
        'time': 'Yesterday, 6:58 pm',
        'icon': Icons.person,
      },
      {
        'name': 'Person 3',
        'time': 'Yesterday, 3:04 pm',
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
              itemCount: statusData.length,
              itemBuilder: (context, i) {
                final person = statusData[i];
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
                      Row(
                        children: [
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
                    ],
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
              child: Icon(Icons.camera_alt, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 80,
            right: 25,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateStatusPage()),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(200, 67, 67, 67),
                ),
                child: Icon(Icons.edit, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
