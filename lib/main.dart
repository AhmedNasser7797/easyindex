import 'package:easyindex/provider/auth.dart';
import 'package:easyindex/provider/provider_data.dart';
import 'package:easyindex/screens/auth_screen.dart';
import 'package:easyindex/screens/progress_info_screen.dart';
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
        ChangeNotifierProvider.value(value: ProviderData()),

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
          ProgressInfoScreen.routeName:(ctx)=>ProgressInfoScreen()
        },
      ),
    );
  }
}

