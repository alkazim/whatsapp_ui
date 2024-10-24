import 'package:flutter/material.dart';
import 'package:whatsapp/screens/camera.dart';

import 'Main Screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
       "camera screen" :(context) => Camera()
        },

      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
