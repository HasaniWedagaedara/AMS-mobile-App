import 'package:appointmentms/widgets/app_largetext.dart';
import 'package:appointmentms/widgets/appbar2.dart';
import 'package:appointmentms/widgets/apptext2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:appointmentms/widgets/buttons.dart';
import 'package:appointmentms/widgets/texboxLec.dart';
import 'package:flutter/material.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBarcommon(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.0),
            Center(child: AppLargeText2(text: "LOGIN")),
            SizedBox(height: 35.0),
            TextBox(labelText: "Faculty Email", width: 390, height: 40),
            SizedBox(height: 25.0),
            TextBox(labelText: "Password", width: 390, height: 40),
            SizedBox(height: 50.0),
            Buttons(text: "LOGIN", onPressed: () {  },),
            SizedBox(height: 35.0),
            AppLargeText(text: "Forgot Password?"),
            SizedBox(height: 10.0),
            TextButton(
            onPressed: () {
              // Handle login link press
            },
            child: const Text(
              'Resend',
              style: TextStyle(
                color:Color(0xFF500512), // Set the link text color
                decoration: TextDecoration.underline, 
                fontSize: 22,
                fontWeight: FontWeight.bold// Add underline for link effect
              ),
            ),
          ),
        
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }
}
