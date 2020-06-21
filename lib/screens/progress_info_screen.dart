import 'file:///D:/Android/flutter/easyindex/lib/widgets/chart_screen.dart';
import 'package:easyindex/screens/edit_progress_screen.dart';
import 'package:easyindex/screens/heart_reting_screen.dart';
import 'package:easyindex/widgets/progress_info_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProgressInfoScreen extends StatefulWidget {
  @override
  _ProgressInfoScreenState createState() => _ProgressInfoScreenState();
}

class _ProgressInfoScreenState extends State<ProgressInfoScreen> {
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
          Navigator.of(context).pushNamed(HeartRatingScreen.routeName);
          }
          , icon: Icon(Icons.favorite),
              label: Text('Heart Rating'))

        ],

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.grey,
                  padding: EdgeInsets.only(right: 20),
                ),
                Text(
                  'Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: (){
                   Navigator.of(context).pushNamed(EditProgressScreen.routeName);

                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blue,
                            style: BorderStyle.solid,
                            width: 1.5)),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: SingleCircularSlider(
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
                    ),
                    InkWell(
                      child: Container(
                        width: 200,
                        height: 150,

                      ),
                      onTap: null,
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  alignment: AlignmentDirectional.topCenter,
                  padding: EdgeInsets.only(bottom: 110),
                )
              ],
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
         ],
        ),
      ),
    );
  }
}
