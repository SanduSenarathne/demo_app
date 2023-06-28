import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusController extends GetxController {
  // Add your controller logic here
}

class StatusPage extends StatelessWidget {
  final StatusController controller;

  const StatusPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Loading Status Page',
          style: TextStyle(
            color: Color.fromARGB(255, 183, 181, 181),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
