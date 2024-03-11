
import 'package:appointmentms/pages/studentverify.dart';
import 'package:appointmentms/widgets/app_largetext.dart';
import 'package:appointmentms/widgets/appbar2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:appointmentms/widgets/buttons.dart';
import 'package:appointmentms/widgets/texboxLec.dart';
import 'package:flutter/material.dart';

class StudentSignup1 extends StatefulWidget {
  const StudentSignup1({Key? key}) : super(key: key);

  @override
  State<StudentSignup1> createState() => _LecturerSignUpState2();
}

class _LecturerSignUpState2 extends State<StudentSignup1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBarcommon(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70.0),
            Center(child: AppLargeText(text: "SIGN UP")),
            SizedBox(height: 45.0),
            TextBox(labelText: "abc_exx@engug.ruh.ac.lk", width: 390, height: 40),
            SizedBox(height: 55.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentSignup1(), // Replace with the actual widget
                  ),
                );
              },
              child: Buttons(text: "CONTINUE", onPressed: () { 
                Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentSignUp3(), // Replace with your actual destination
      ),
    );
               },),
            ),
            
            SizedBox(height: 25.0),
            
            SizedBox(height: 25.0),
        
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }
}
