
import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key, required this.Time, required this.name,
  });
final String Time;
final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
            // trailing: IconButton(onPressed: (){} ,icon: Icon(Icons.notifications_active,color: Colors.white,size: 35,)),
            leading: Text(
      name,
         style: const TextStyle(color: Colors.white,fontSize: 29),
            ),
         
           title: Align(
          alignment: Alignment.topRight,
          child: Text(Time,style: const TextStyle(color: Colors.white,fontSize: 25),)),
           
          );
  }
}
