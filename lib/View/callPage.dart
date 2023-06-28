import 'package:flutter/material.dart';

class CallerPage extends StatelessWidget {
  const CallerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Caller Page',
          style: TextStyle(
            color: Color.fromARGB(255, 183, 181, 181),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
