import 'package:flutter/material.dart';

class CreateStatusPage extends StatelessWidget {
  const CreateStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.tag_faces_sharp),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.text_fields),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.color_lens),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  maxLines: null,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type a status',
                    hintStyle: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
