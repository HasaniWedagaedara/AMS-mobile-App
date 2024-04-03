import 'package:appointmentms/pages/CalenderViews/DailyView.dart';
import 'package:appointmentms/widgets/SideBar.dart';
import 'package:appointmentms/widgets/appBar.dart';
import 'package:appointmentms/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MonthlyView extends StatefulWidget {
  const MonthlyView({Key? key}) : super(key: key);

  @override
  State<MonthlyView> createState() => _MonthlyViewState();
}

class _MonthlyViewState extends State<MonthlyView> {
  void _navigateToDailyView(BuildContext context, DateTime selectedDate) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DailyView(selectedDate: selectedDate),
      ),
    );
  }

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
              view: CalendarView.month,
              initialSelectedDate: DateTime.now(),
              onTap: (CalendarTapDetails details) {
                if (details.targetElement == CalendarElement.calendarCell) {
                  _navigateToDailyView(context, details.date!);
                }
              },
            ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
} 
