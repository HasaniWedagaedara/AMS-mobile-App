import 'package:appointmentms/widgets/SideBar.dart';
import 'package:appointmentms/widgets/appBar.dart';
import 'package:appointmentms/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class WeeklyView extends StatefulWidget {
  const WeeklyView({super.key});

  @override
  State<WeeklyView> createState() => _WeeklyViewState();
}

class _WeeklyViewState extends State<WeeklyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: SideBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
           width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black), // Add border properties as needed
              borderRadius: BorderRadius.circular(12), // Add border radius as needed
            ),
          child: SfCalendar(
            view: CalendarView.week,
            timeSlotViewSettings: const TimeSlotViewSettings(
          timeInterval: Duration(minutes: 30),
          
          timeIntervalWidth: 60,
          timeFormat: 'h:mm a',
          timeRulerSize: 80, 
          timeTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Colors.blue,
          ),
        ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}