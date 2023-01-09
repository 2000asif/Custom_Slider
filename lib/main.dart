import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';

import 'Sceonds_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routName,
      routes: {
        HomePage.routName: (context) => HomePage(),
        SecondPage.routName: (context) => SecondPage(),
      },
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}
