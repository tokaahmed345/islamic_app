
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomHijriScreen extends StatefulWidget {
  const CustomHijriScreen({super.key});
  static String id="hijri";

  @override
  State<CustomHijriScreen> createState() => _CustomHijriScreenState();
}

class _CustomHijriScreenState extends State<CustomHijriScreen> {
  DateTime today=DateTime.now();
  
  late  HijriCalendar hjri;
  @override
  void initState() {
    super.initState();
       hjri = HijriCalendar.fromDate(today);
  }
  void onSelected(DateTime day,DateTime focusedDay){
setState(() {
  today=day;
  hjri=HijriCalendar.fromDate(today);
});
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

body: Container(
  color: Color(0xff161853),
  child: Column(children: [
  
     Padding(
      padding: const EdgeInsets.all(20.0),
      // child: Text(" ${day.} +${today.toLocal().toString().split(" ")[0]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
    
    child: Text(    "${hjri.longMonthName} ${hjri.hDay} ${hjri.hYear}\n"
      
      "${DateFormat('EEEE, d MMMM yyyy').format(today)}"
            ,
    style: TextStyle(color: Color.fromARGB(255, 162, 59, 148),fontSize: 25,fontWeight: FontWeight.bold),),
    
    ),
  
  
  TableCalendar(
    rowHeight: 70,
    availableGestures: AvailableGestures.all,
    focusedDay: today,
    onDaySelected: onSelected,
    selectedDayPredicate: (day)=>isSameDay(day, today),
    firstDay:DateTime.utc(2000,1,1) , 
    lastDay: DateTime.utc(2040,1,1),
    
    calendarStyle: CalendarStyle(
      
                defaultTextStyle: TextStyle(color: Colors.white,fontSize: 24),
                weekendTextStyle: TextStyle(color: Colors.white,fontSize: 24), // Days color
                selectedDecoration: BoxDecoration(
                  color: Color(0xff8e2680), // Selected day color
                  shape: BoxShape.circle,
                ),
                // todayDecoration: BoxDecoration(
                //   color: Colors.orange, // Today's color
                //   shape: BoxShape.circle,
                // ),
   
    
    ),

    headerStyle: HeaderStyle(
  
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
      formatButtonVisible: false,
            leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white), 

            rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white), 
 
    ),
    daysOfWeekStyle: DaysOfWeekStyle(
      weekendStyle:TextStyle(color: Colors.white) ,
      weekdayStyle: TextStyle(color: Colors.white)),
  )
    
    ,
  
 
  ],),
),

    );
  
  
  
  }
}
