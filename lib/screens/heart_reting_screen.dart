import 'package:easyindex/widgets/chart_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class HeartRatingScreen extends StatelessWidget {
  static const routeName='heart_rating_screen';
  var data = [0.0, 0.0, 0.0, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Heart Rate'),
        backgroundColor: Color(0xff003366),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings,color: Colors.white,),
          onPressed: (){},
          ),
          IconButton(
            icon: Icon(Entypo.help,color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff003366),const Color(0xff0099ff)],
                tileMode: TileMode.mirror,
              ),
            ),

            child: Column(
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(width: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.favorite,color: Colors.red,),
                        Text('Resting Heart Rate, last 30 Days',
                        style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    IconButton(icon: Icon(Icons.fullscreen,size: 30,color: Colors.white,), onPressed: (){})
                  ],
                ),

//              Container(
//                  height: 150,
//                  child: PointsLineChart(PointsLineChart.createSampleData(),animate: false,))
              
              Expanded(child: Chart()),
              ],
            ),
          ),

           Row(
             children: <Widget>[

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[

                     CircleAvatar(
                       backgroundImage: AssetImage('assets/images/test.png'),
                       radius: 40,
                     ),
                   ]
                 ),
               ),
               Expanded(

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Text('See How Fit You Are',style: TextStyle(
                       fontSize: 20
                     ),
                       overflow: TextOverflow.ellipsis,
                       maxLines: 1,
                     ),
                     SizedBox(height: 5,),
                     Text('Discover Your Cardio Fitness Level & Score ',
                     style: TextStyle(
                       color: Colors.grey
                     ),
                     overflow: TextOverflow.ellipsis,
                     maxLines: 1,),


                     InkWell(
                       child: Container(
                         margin: EdgeInsets.symmetric(vertical: 5),
                         width: MediaQuery.of(context).size.width*0.6,

                           decoration: BoxDecoration(
                             color: Colors.pink,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                             child: Text('Learn more',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 20
                             ),),
                           ),

                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff003366),
              ),
                child: Text('This Week',style: TextStyle(color: Colors.white,fontSize: 15),),
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    child: Text('Mon',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(text: '79',style: TextStyle(fontSize: 22,
                          color: Colors.black),),
                      TextSpan(text: ' bpm Resting',style: TextStyle(color: Colors.grey))
                    ]
                  )),)
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Sparkline(data: data,
//                fillColor: Colors.amberAccent,
                sharpCorners: true,
                lineGradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [const Color(0xffffff00),const Color(0xffff9900)],
                  tileMode: TileMode.mirror,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
