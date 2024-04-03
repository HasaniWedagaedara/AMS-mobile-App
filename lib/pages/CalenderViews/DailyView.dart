import 'package:appointmentms/widgets/AfterSignUpBottpm.dart';
import 'package:appointmentms/widgets/SideBar.dart';
import 'package:appointmentms/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DailyView extends StatefulWidget {
  final DateTime selectedDate;
  const DailyView({Key? key, required this.selectedDate, }) : super(key: key);

  @override
  State<DailyView> createState() => _DailyViewState();
}

class _DailyViewState extends State<DailyView> {
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
            view: CalendarView.day,
            
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
            selectionDecoration: BoxDecoration(
              color: Color(0xFFA1CCEB).withOpacity(0.5),
              border: Border.all(color: Color.fromARGB(255, 178, 214, 239), width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AfterLoginBottomNavigation(),
    );
  }
}


