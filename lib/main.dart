import 'package:disenos_app/src/pages/headers_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Painter',
      home: Scaffold(
        body:  HeadersPage(),
      ),
    );
  }
}

