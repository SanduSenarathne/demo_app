import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsController extends GetxController {
  // Add your controller logic here
}

class CallerPage extends StatelessWidget {
  final CallsController controller;

  const CallerPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Loading Calls Page',
          style: TextStyle(
            color: Color.fromARGB(255, 183, 181, 181),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
