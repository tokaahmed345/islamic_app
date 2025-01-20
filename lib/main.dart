
import 'package:flutter/material.dart';
import 'package:islamicapp/screens/azkar.dart';
import 'package:islamicapp/screens/azkar_contetnt.dart';
import 'package:islamicapp/screens/hijriscreen.dart';
import 'package:islamicapp/screens/homepage.dart';
import 'package:islamicapp/screens/prayer-time-screen.dart';
import 'package:islamicapp/screens/qibla.dart';
import 'package:islamicapp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        useMaterial3: false,
      ),
routes: {
MuslimApp.id:(context)=>MuslimApp(),
Homepage.id:(context)=>Homepage(),
PrayerTimes.id:(context)=>PrayerTimes(),
Al_Azkar.id:(context)=>Al_Azkar(),
AzkarContent.id:(context)=>AzkarContent(),
Hijriscreen.id:(context)=>Hijriscreen(),
QiblaCompass.id:(context)=>QiblaCompass()
},
initialRoute: MuslimApp.id,
  
    );
  }
}
