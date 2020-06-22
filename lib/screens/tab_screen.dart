import 'package:flutter/material.dart';


import '../screens/community_screen.dart';
import '../screens/covid19_screen.dart';
import '../screens/discover_screen.dart';
import '../screens/premium_Screen.dart';
import '../screens/progress_info_screen.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 5,
      child:  Scaffold(
        backgroundColor: Colors.white,

        body: TabBarView(
          children: [
            ProgressInfoScreen(),
           DiscoverScreen(),
            CommunityScreen(),
            PremiumScreen(),
            Covid19Screen(),
          ],
        ),
        bottomNavigationBar:  TabBar(

          tabs: [
            Tab(
              icon:  Icon(Icons.calendar_today,size: 20,),
              text: 'Today',
            ),
            Tab(
              icon:  Icon(Icons.explore,size: 20),
              text: 'Discover',
            ),
            Tab(
              icon:  Icon(Icons.people,size: 20),
              text: 'Community',

            ),
            Tab(icon:  Icon(Icons.arrow_forward,size: 20),
              text:'Premium',),
            Tab(icon:  Icon(Icons.add_circle,size: 20),
              text:'Covid19',),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
//          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontSize: 13
          ),
          indicatorColor: Colors.white,


        ),

      ),
    );

  }
}
