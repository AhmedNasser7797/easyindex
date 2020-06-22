import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easyindex/model/data.dart';
import 'package:easyindex/provider/provider_data.dart';
import 'package:provider/provider.dart';

import '../screens/edit_progress_screen.dart';
import '../screens/heart_reting_screen.dart';
import '../widgets/progress_info_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressInfoScreen extends StatefulWidget {
  static const routeName = 'progress-screen';

  @override
  _ProgressInfoScreenState createState() => _ProgressInfoScreenState();
}

class _ProgressInfoScreenState extends State<ProgressInfoScreen> {
   int minutes=0;
   int floors=0;
   double km=0;
   int cals=0;
   int sleepHouers=0;
   int numDay=0;
   int bpmHeart=0;
   int steps=0;

  @override
  Widget build(BuildContext context) {
    final data= Firestore.instance.collection('userData').document('userId').get();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[

          FlatButton.icon(
           icon: Icon(Icons.save),
              label: Text('retreive data'),
            onPressed: () async{
              final data=await Firestore.instance.collection('userData').document('userId').get();

              setState(() {
                minutes= data.data['minutes'];
                bpmHeart= data.data['bpmHeart'];
                cals= data.data['cals'];
                floors= data.data['floors'];
                km= data.data['km'];
                numDay= data.data['numDay'];
                sleepHouers= data.data['sleepHouers'];
                steps=data.data['steps'];
              });
            },),

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
                  onPressed: (){
                  },
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
                              '$minutes',
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
                    color: Colors.grey
                  ),
                  alignment: AlignmentDirectional.topCenter,
                  padding: EdgeInsets.only(bottom: 110),
                onPressed: (){},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ProgressInfoItem(
                      icon: Icons.directions_run,title: 'steps',number: '$steps',
                    ),
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
                    ProgressInfoItem(
                      icon: Icons.show_chart,
                      title: 'floors',
                      number: '$floors',
                    ),
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
                    ProgressInfoItem(
                      icon:Icons.location_on,
                      title:'Km' ,
                      number: '$km',
                    ),
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
                    ProgressInfoItem(
                      icon: MfgLabs.fire,
                      title: 'Cals',
                      number: '$cals',
                    ),
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
                  'Your Sleep Goals is $sleepHouers hr',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                ),
              ),
            ),

            Card(
             shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ),

              child: ListTile(
                leading:
                    CircularPercentIndicator(
                      radius: 50.0,
                      percent: 0.4,
                      center: Icon(Icons.directions_run,color: Colors.orange,size: 30,),
                      progressColor: Colors.orange,


                    ),

                title: RichText(
                  text: TextSpan(
                    children:[
                      TextSpan(
                        text: '$numDay ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black
                      ),
                      ),
                      TextSpan(
                        text: 'of ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                      ),
                      ),
                      TextSpan(
                        text: '5 ',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black
                      ),
                      ),
                      TextSpan(
                        text: 'days',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                      ),
                      ),

                    ]
                  ),
                ),
                subtitle: Text(
                  'of exercise this week',
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
                leading:Icon(Icons.favorite,color: Colors.red,size: 20,),
                title:RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: '$bpmHeart',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          )
                      ),
                      TextSpan(
                          text: ' bpm',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          )
                      ),

                    ]
                )),
                subtitle:Text(
                  'fat burn zone',
                  style: TextStyle(color: Colors.black, fontSize: 13),
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
