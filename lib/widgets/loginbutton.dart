import 'package:appointmentms/pages/Lecturer_login.dart';
import 'package:appointmentms/pages/studentLogin.dart';
import 'package:appointmentms/widgets/app_largetext.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  String? _selectedRole; // To store the selected role

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        children: [
          TextButton(
            onPressed: () => _showMenu(context),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                  color: Color(0xFF500512),
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          
        ],
      ),
    );
  }

  void _showMenu(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Lecturer');
              },
              child: Center(child: AppLargeText(text: "LECTURE")),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Student');
              },
              child: Center(child: AppLargeText(text: "STUDENT")),
            ),
          ],
        );
      },
    );

    if (result != null) {
    setState(() {
      _selectedRole = result;
    });

    // Handle the selected value (result) here
    

    // Navigate based on the selected role
    if (_selectedRole == 'STAFF') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LectureLogin()),
      );
    } else if (_selectedRole == 'Student') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StudentLogin()),
      );
    }
  }
  }
}
