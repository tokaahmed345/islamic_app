import 'package:flutter/material.dart';
import 'package:islamicapp/screens/homepage.dart';

class MuslimApp extends StatefulWidget {
  const MuslimApp({super.key});
static String id='splash';

  @override
  State<MuslimApp> createState() => _MuslimAppState();
}



class _MuslimAppState extends State<MuslimApp> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2),(){
    Navigator.pushNamed(context, Homepage.id);

    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(




body: Image.asset("assets/images/splash.jpg",fit: BoxFit.cover,height: double.infinity,),


    );
 
 
 
 
 
 
  }
}