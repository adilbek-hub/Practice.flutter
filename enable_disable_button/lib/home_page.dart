import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool btnActive = false; //1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: const [
                Padding(
                 padding: EdgeInsets.all(8.0),
                 child: TextField(
                  onChanged: (String? email){

                  },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
              ),
             
            ),
               ),
          ],
        ),
      ),
    );
  }
}
