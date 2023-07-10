import 'package:flutter/material.dart';

class CreateStatusPage extends StatelessWidget {
  const CreateStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Status'),
      ),
      body: Center(
        child: Text('Create your status here'),
      ),
    );
  }
}
