//import 'package:demo_whatsapp/View/chatPage.dart';
import 'package:flutter/material.dart';
import 'View/layout.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 168, 164, 175)),
        useMaterial3: true,
      ),
      home: LayoutPage(),
    );
  }
}
