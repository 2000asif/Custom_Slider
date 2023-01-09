import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sceonds_page.dart';

class HomePage extends StatefulWidget {
  static const String routName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Custom Slider',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          clipBehavior: Clip.none,
          onPressed: () {
            Navigator.pushNamed(
              context,
              SecondPage.routName,
            );
          },
          child: const Text(
            "Click Now",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
