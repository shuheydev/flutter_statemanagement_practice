import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_statemanagement_practice/schedule.dart';

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
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      onChanged: (value) => schedule.stateManagementTime = value,
      value: schedule.stateManagementTime,
    );
  }
}
