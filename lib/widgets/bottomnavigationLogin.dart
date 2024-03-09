import 'package:flutter/material.dart';
import 'package:appointmentms/pages/contactpage.dart';
import 'package:appointmentms/pages/homepage.dart';
import 'package:appointmentms/pages/studentSignUp.dart';

class BottomNavigation2 extends StatefulWidget {
  const BottomNavigation2({Key? key}) : super(key: key);

  @override
  State<BottomNavigation2> createState() => _BottomNavigation2State();
}

class _BottomNavigation2State extends State<BottomNavigation2> {
 
  int _currentIndex = 0;
  
 final List<Widget> tabs = [
    HomePage(),
    StudentSignUp(),
   ContactUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        
        backgroundColor: const Color(0xFFA1CCEB),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home, color: Color(0xFF500512)),
          ),
          BottomNavigationBarItem(
            label: 'Calendar',
            icon: Icon(Icons.calendar_today, color: Color(0xFF500512)),
          ),
          BottomNavigationBarItem(
            label: 'Contact Us',
            icon: Icon(Icons.person, color: Color(0xFF500512)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
