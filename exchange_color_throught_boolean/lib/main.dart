import 'package:exchange_color_throught_boolean/components/container_class.dart';
import 'package:exchange_color_throught_boolean/util/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExchangeColorWithBool(),
    );
  }
}

class ExchangeColorWithBool extends StatefulWidget {
  const ExchangeColorWithBool({super.key});

  @override
  State<ExchangeColorWithBool> createState() => _ExchangeColorWithBoolState();
}

class _ExchangeColorWithBoolState extends State<ExchangeColorWithBool> {
  bool isBool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ExchangeColorWithBool',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: ContainerWidget(
              iconAddRemove: Icons.add,
              isBool: isBool,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ContainerWidget(
            iconAddRemove: Icons.remove,
            isBool: !isBool,
          ),
        ],
      ),
    );
  }
}
