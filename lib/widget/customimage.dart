

import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
        child: Image(
       image: AssetImage(   "assets/images/prayer.jpg",
      
        ),
           fit: BoxFit.fill,
          width: double.infinity,
          height: 200,
        ),
      ),
    );
  }
}