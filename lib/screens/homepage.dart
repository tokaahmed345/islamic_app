
import 'package:flutter/material.dart';
import 'package:islamicapp/screens/azkar.dart';
import 'package:islamicapp/screens/hijriscreen.dart';
import 'package:islamicapp/screens/prayer-time-screen.dart';
import 'package:islamicapp/screens/qibla.dart';
import 'package:islamicapp/widget/customcard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String id = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
automaticallyImplyLeading: false,       

 backgroundColor:      Color(0xff161853),

        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Color(0xff161853),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
             child:    SingleChildScrollView(
         child: Column(
                children: [
                  CustomCard(text: "PrayerTime",image: "assets/images/prayer-mat.png",onTap: (){Navigator.pushNamed(context, PrayerTimes.id);},),
              
              CustomCard(text: "Al-Azkar",image: "assets/images/rub-el-hizb.png",onTap: (){Navigator.pushNamed(context, Al_Azkar.id);},),
              
              CustomCard(text: "Qible", image: "assets/images/compass.png",onTap: (){Navigator.pushNamed(context, QiblaCompass.id);},),
              
                          CustomCard(text: "Hijiri Calendar", image: "assets/images/calendar.png",onTap: (){Navigator.pushNamed(context, Hijriscreen.id);},)
        
              
                ],
              ),
             )
        ,
        ),
      ),
    );
  }
}
