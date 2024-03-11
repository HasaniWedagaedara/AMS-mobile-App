import 'package:appointmentms/widgets/appbar2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarcommon(),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(15.0),
            
            child: TableCalendar(
                  firstDay: DateTime.utc(2023, 01, 01),
                  lastDay: DateTime.utc(2030, 01, 01),
                  focusedDay: DateTime.now(),
                  calendarStyle: const CalendarStyle(
                defaultTextStyle: TextStyle(color: Color(0xFF500512),fontWeight: FontWeight.bold),
                selectedTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                todayTextStyle: TextStyle(color: Color(0xFF500512),fontWeight: FontWeight.bold),
                weekendTextStyle: TextStyle(color: Color.fromARGB(255, 238, 46, 33),fontWeight: FontWeight.bold),
                outsideTextStyle: TextStyle(color: Color.fromARGB(255, 139, 123, 123),fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation2(),
    );
  }
}