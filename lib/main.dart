import './provider/auth.dart';
import './screens/auth_screen.dart';
import './screens/progress_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/edit_progress_screen.dart';
import './screens/heart_reting_screen.dart';
import './screens/tab_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Auth()),

      ],
      child: MaterialApp(
        title: 'Easy Index Task',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthScreen(),
        routes: {
          EditProgressScreen.routeName:(ctx)=>EditProgressScreen(),
          HeartRatingScreen.routeName:(ctx)=>HeartRatingScreen(),
          AuthScreen.routeName:(ctx)=>AuthScreen(),
          ProgressInfoScreen.routeName:(ctx)=>ProgressInfoScreen(),
          TabScreen.routeName:(ctx)=>TabScreen()
        },
      ),
    );
  }
}

