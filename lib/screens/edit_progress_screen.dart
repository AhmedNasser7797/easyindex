import 'file:///D:/Android/flutter/easyindex/lib/widgets/chart_screen.dart';
import 'package:easyindex/widgets/chart_screen.dart';
import 'package:easyindex/widgets/progress_info_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProgressScreen extends StatefulWidget {
  static const routeName='edit-progress-screen';
  @override
  _EditProgressScreenState createState() => _EditProgressScreenState();
}

class _EditProgressScreenState extends State<EditProgressScreen> {
  bool delete=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save), color: Colors.black, onPressed: () {}),
          FlatButton.icon(onPressed: (){
//            Navigator.of(context).push(MaterialPageRoute(builder:EndPointsAxisTimeSeriesChart() ));
          }, icon: Icon(Icons.favorite),
              label: Text('Heart Rating'))

        ],

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
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
                  onTap: (){},
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
                    ProgressInfoItem(),
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
                    ProgressInfoItem(),
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
                    ProgressInfoItem(),
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
                    ProgressInfoItem(),
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
//                  Positioned(child: Icon(Icons.close,),right: 20,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  'Your Sleep Goals is 7 hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  'Your Sleep Goals is 7 hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  'Your Sleep Goals is 7 hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  'Your Sleep Goals is 7 hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  'Your Sleep Goals is 7 hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

//            TextSpan(children: )
//            Container(
//                height: 300,
//                width: double.infinity,
//                child: PointsLineChart(),)
          ],
        ),
      ),
    );
  }
}
