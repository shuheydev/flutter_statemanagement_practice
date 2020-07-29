import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_statemanagement_practice/schedule.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      onChanged: (value) => schedule.stateManagementTime = value,
      value: schedule.stateManagementTime,
    );
  }
}
