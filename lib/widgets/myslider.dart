import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  void _onValueChanged(double value) {
    setState(() {
      _value = value;
    });
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: _onValueChanged,
      value: _value,
    );
  }
}
