
import 'package:flutter/material.dart';
import 'package:islamicapp/widget/customcalender.dart';

class Hijriscreen extends StatelessWidget {
  const Hijriscreen({super.key});
  static String id="hijri";
  
  @override
  Widget build(BuildContext context) {

 return Scaffold(
appBar: AppBar(
  elevation: 0,
  backgroundColor: const Color(0xff161853),
  leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
  title: const Text("Hijri Calendar"),centerTitle: true,),
body: const CustomHijriScreen(),

 );
  
  

  }

}
