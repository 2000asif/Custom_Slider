import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String routName = '/second';
  const SecondPage({Key? key}) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // late String message;
  // @override
  // void didChangeDependencies() {
  //   message = ModalRoute.of(context)!.settings.arguments as String;
  //   super.didChangeDependencies();
  // }
  double sliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
                activeColor: Colors.blue,
                inactiveColor: Colors.white,
                value: sliderValue,
                max: 100,
                min: 0,
                divisions: 20,
                // label: sliderValue.toStringAsFixed(2),
                label: '${sliderValue.round()}',
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                }),

            // Text('${sliderValue.round()} ', style: TextStyle(fontSize: 50)),
            Text(sliderValue.toStringAsFixed(2),
                style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
