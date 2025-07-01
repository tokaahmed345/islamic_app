
import 'package:flutter/material.dart';
import 'package:islamicapp/widget/customimage.dart';
import 'package:islamicapp/widget/customprayer.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({super.key});
  static String id = 'prayertimes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff161853),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.white,
            )),
        title: const Text(
          "All Prayer",
          style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(color: const Color(0xff161853),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
          child: Column(
            children: [
          CustomImage(),
              Expanded(
                child:  CustomListTile()
              )
            ],
          ),
        ),
      ),
    );
  }
}
