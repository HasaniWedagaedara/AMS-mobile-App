import 'package:appointmentms/widgets/appbar2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calenderPage extends StatefulWidget {
  const calenderPage({super.key});

  @override
  State<calenderPage> createState() => _calenderPageState();
}

class _calenderPageState extends State<calenderPage> {
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
                defaultTextStyle: TextStyle(color: Color(0xFF500512)),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayTextStyle: TextStyle(color: Color(0xFF500512)),
                weekendTextStyle: TextStyle(color: Color.fromARGB(255, 238, 46, 33)),
                outsideTextStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation2(),
    );
  }
}