import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySlider(),
    );
  }
}

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double MySlider = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MySlider'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('${MySlider.toInt()}'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.2),
                child: Card(
                  color: Colors.yellow,
                  child: CupertinoSlider(
                      value: MySlider,
                      max: 300,
                      activeColor: Colors.black,
                      thumbColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          MySlider = value;
                        });
                      }),
                ),
              ),
              Card(
                color: Colors.yellow,
                child: CupertinoSlider(
                    value: MySlider,
                    max: 300,
                    activeColor: Colors.black,
                    thumbColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        MySlider = value;
                      });
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
