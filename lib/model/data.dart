
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data with ChangeNotifier{
  final int minutes;
  final int floors;
  final double km;
  final int cals;
  final int sleepHouers;
  final int numDay;
  final int bpmHeart;

  Data({
    this.bpmHeart,
    this.cals,
    this.floors,
    this.km,
    this.minutes,
    this.numDay,
    this.sleepHouers
});
}