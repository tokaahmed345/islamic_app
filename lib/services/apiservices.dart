import 'package:dio/dio.dart';
import 'package:islamicapp/models/prayertimes.dart';

class Services{
final Dio dio=createSetUp();
static Dio createSetUp(){
  Dio dio=Dio();
  dio.interceptors.add(LogInterceptor(
    request : true,
   requestHeader : true,
   requestBody :true,
   responseHeader : true,
   responseBody : true,
   error :true,
  )
   
  );
  return dio;
}


Future <List<PrayerTimes>> getApi()async{
  try{

final response= await dio.get("http://api.aladhan.com/v1/timingsByCity/19-12-2024?city=Cairo&country=Egypt&method=2",data: {

 
});

if(response.statusCode==200){
    List<PrayerTimes> prList=[ PrayerTimes.fromJson(response.data)];
    return prList;

}else{
  throw Exception("Failed${response.data}");
}

}catch(e){

throw Exception(e.toString());
}
  }


}