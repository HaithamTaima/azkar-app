import 'package:azkar/screens/about_screen.dart';
import 'package:azkar/screens/azkar_screen.dart';
import 'package:azkar/screens/launch_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ] ,
      supportedLocales: [
        Locale('ar'),
      ],
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context)=>LaunchScreen(),
        '/azkar_screen':(context)=>AzkarScreen(),
        '/about_screen':(context)=>AboutScreen(),
      },
    );

  }
}
