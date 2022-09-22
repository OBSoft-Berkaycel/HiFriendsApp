import 'package:flutter/material.dart';
import 'package:myapp/layouts/master.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi Friends!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Master(),
    );
  }
}
