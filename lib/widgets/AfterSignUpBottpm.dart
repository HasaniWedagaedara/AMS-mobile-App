import 'package:appointmentms/pages/Departments/DepartmentView.dart';
import 'package:appointmentms/pages/Login%20S/LoginHome.dart';
import 'package:flutter/material.dart';
import 'package:appointmentms/pages/contactpage.dart';

class AfterLoginBottomNavigation extends StatefulWidget {
  const AfterLoginBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AfterLoginBottomNavigation> createState() => _AfterLoginBottomNavigationState();
}

class _AfterLoginBottomNavigationState extends State<AfterLoginBottomNavigation> {
 
  int _currentIndex = 0;
 

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
            label: 'Department',
            icon: Icon(Icons.school, color: Color(0xFF500512)),
          ),
          BottomNavigationBarItem(
            label: 'My appointments',
            icon: Icon(Icons.list_alt_sharp, color: Color(0xFF500512)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
      case 0:
        // Navigate to the Home page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginHome()),
        );
        break;
      case 1:
        // Navigate to the Calendar page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DepartmentView()),
        );
        break;
      case 2:
        // Navigate to the Contact Us page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactUs()),
        );
        break;
    }
        },
      ),
    );

    
  }
}
