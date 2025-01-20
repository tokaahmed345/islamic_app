
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:islamicapp/models/prayertimes.dart';
import 'package:islamicapp/services/apiservices.dart';
import 'package:islamicapp/widget/customlisttile.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });
    Future<List<PrayerTimes>>loadInfo()async{
Services services=Services();

return await services.getApi();
    }
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future:loadInfo() ,
      builder: (context, snapshot) {
if(snapshot.hasData){

final info=snapshot.data!;
                    final pr=info[0].data?.timings;

 final List<Map<String, String?>> times = [ {
  "name": "Fajr", "time": pr?.fajr},
   {"name": "Sunrise", "time": pr?.sunrise}, 
   {"name": "Dhuhr", "time": pr?.dhuhr}, 
  {"name": "Asr", "time": pr?.asr},
   {"name": "Sunset", "time": pr?.sunset}, 
   {"name": "Maghrib", "time": pr?.maghrib},
    {"name": "Isha", "time": pr?.isha}, 
    {"name": "Imsak", "time": pr?.imsak},
     {"name": "Midnight", "time": pr?.midnight},
      {"name": "First Third", "time": pr?.firstthird}, 
      {"name": "Last Third", "time": pr?.lastthird}];
      return ListView.builder(
                  itemCount: times.length,
                  itemBuilder: (context, index) {
                   final time=times[index];
                    return CustomTile(Time: time['time']!,name:time["name"] !,);
                  });
                  
      
}else if(snapshot.connectionState==ConnectionState.waiting){
  return SpinKitRipple(size: 100,color: Colors.purple,);
}else{
    return Text("Error${snapshot.error}");

}
      } );
    
  }
}


