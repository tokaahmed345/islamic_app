
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
MuslimApp.id:(context)=>const MuslimApp(),
Homepage.id:(context)=>const Homepage(),
PrayerTimes.id:(context)=>const PrayerTimes(),
Al_Azkar.id:(context)=>const Al_Azkar(),
AzkarContent.id:(context)=>const AzkarContent(),
Hijriscreen.id:(context)=>const Hijriscreen(),
QiblaCompass.id:(context)=>const QiblaCompass()
},
initialRoute: MuslimApp.id,
  
    );
  }
}
