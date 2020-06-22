import 'package:easyindex/screens/heart_reting_screen.dart';

import '../widgets/progress_info_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProgressScreen extends StatefulWidget {
  static const routeName = 'edit-progress-screen';
  @override
  _EditProgressScreenState createState() => _EditProgressScreenState();
}

class _EditProgressScreenState extends State<EditProgressScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save), color: Colors.black, onPressed: () {

          }),
          FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed(HeartRatingScreen.routeName);
              },
              icon: Icon(Icons.favorite),
              label: Text('Heart Rating'))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(),
                Text(
                  'Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 15,
//                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  SingleCircularSlider(
                    100,
                    20,
                    height: 150,
                    width: 150,
                    baseColor: Color(0xffc7eef5),
                    handlerColor: Color(0xff03dac6),
                    selectionColor: Color(0xff03dac6),
                    showHandlerOutter: false,
                    showRoundedCapInSelection: false,
                    sliderStrokeWidth: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          MfgLabs.flash,
                          color: Color(0xff03dac6),
                          size: 40,
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Min',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
//                            border: Border.all(color: Color(0xff03dac6),width: 2),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Icon(
                          Icons.close,
                          color: Color(0xff03dac6),
                          size: 25,
                        ),
                      ),
                    ),
                    onTap: null,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ProgressInfoItem(
                      icon: Icons.directions_run,
                      title: 'steps',
                      number: '111',
                    ),
                    InkWell(
                      child: Container(
                        width: 70,
                        height: 70,
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Icon(
                            Icons.close,
                            color: Color(0xff03dac6),
                            size: 20,
                          ),
                        ),
                      ),
                      onTap: null,
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    ProgressInfoItem(
                      icon: Icons.show_chart,
                      title: 'floors',
                      number: '7',
                    ),
                    InkWell(
                      child: Container(
                        width: 70,
                        height: 70,
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
//                            border: Border.all(color: Color(0xff03dac6),width: 2),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Icon(
                            Icons.close,
                            color: Color(0xff03dac6),
                            size: 20,
                          ),
                        ),
                      ),
                      onTap: null,
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    ProgressInfoItem(
                      icon: Icons.location_on,
                      title: 'Km',
                      number: '0.98',
                    ),
                    InkWell(
                      child: Container(
                        width: 70,
                        height: 70,
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
//                            border: Border.all(color: Color(0xff03dac6),width: 2),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Icon(
                            Icons.close,
                            color: Color(0xff03dac6),
                            size: 20,
                          ),
                        ),
                      ),
                      onTap: null,
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    ProgressInfoItem(
                      icon: MfgLabs.fire,
                      title: 'Cals',
                      number: '1125',
                    ),
                    InkWell(
                      child: Container(
                        width: 70,
                        height: 70,
//                        padding: EdgeInsets.only(left:5 ),
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
//                            border: Border.all(color: Color(0xff03dac6),width: 2),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: Icon(
                            Icons.close,
                            color: Color(0xff03dac6),
                            size: 20,
                          ),
                        ),
                      ),
                      onTap: null,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: (FaIcon(
                        FontAwesome5.moon,
                        color: Colors.deepPurple,
                      )),
                    ),
                    title: Text(
                      'Wear Your Fitbit to bed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text(
                      'Your Sleep Goals is 7 hr',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
//                            border: Border.all(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.fullscreen,
                              color: Color(0xff03dac6),
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.close,
                            color: Color(0xff03dac6),
                            size: 25,
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                    onTap: null,
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircularPercentIndicator(
                      radius: 50.0,
                      percent: 0.4,
                      center: Icon(
                        Icons.directions_run,
                        color: Colors.orange,
                        size: 30,
                      ),
                      progressColor: Colors.orange,
                    ),
                    title: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '2 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: 'of ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: '5 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: 'days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ]),
                    ),
                    subtitle: Text(
                      'of exercise this week',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
//                            border: Border.all(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Icon(
                        Icons.close,
                        color: Color(0xff03dac6),
                        size: 25,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    onTap: () {
                      print('tab');
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24,
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '98',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      TextSpan(
                          text: ' bpm',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ])),
                    subtitle: Text(
                      'fat burn zone',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
//                            border: Border.all(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Icon(
                        Icons.close,
                        color: Color(0xff03dac6),
                        size: 25,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    onTap: () {
                      print('tab');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
