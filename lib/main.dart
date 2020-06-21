import 'file:///D:/Android/flutter/easyindex/lib/widgets/chart_screen.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:easyindex/screens/edit_progress_screen.dart';
import 'package:easyindex/screens/heart_reting_screen.dart';

import './screens/tab_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Index Task',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabScreen(),
      routes: {
        EditProgressScreen.routeName:(ctx)=>EditProgressScreen(),
        HeartRatingScreen.routeName:(ctx)=>HeartRatingScreen(),
//        EndPointsAxisTimeSeriesChart.routeName:(ctx)=>EndPointsAxisTimeSeriesChart(_),
      },
    );
  }
}

