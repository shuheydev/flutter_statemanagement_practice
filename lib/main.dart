import 'package:flutter/material.dart';
import 'package:flutter_statemanagement_practice/widgets/mychart.dart';
import 'package:flutter_statemanagement_practice/widgets/myslider.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time spent'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: MyChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: MySlider(),
          ),
        ],
      ),
    );
  }
}
