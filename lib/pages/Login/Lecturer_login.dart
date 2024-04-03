import 'package:appointmentms/pages/SignUp%20L/lectureSignUp.dart';
import 'package:appointmentms/pages/SignUp%20L/lesturepasswordreset1.dart';
import 'package:appointmentms/widgets/appbarcommon.dart';
import 'package:appointmentms/widgets/apptext2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:appointmentms/widgets/buttons.dart';
import 'package:appointmentms/widgets/googleButton.dart';
import 'package:appointmentms/widgets/miniText.dart';
import 'package:appointmentms/widgets/texboxLec.dart';
import 'package:flutter/material.dart';

class LectureLogin extends StatefulWidget {
  const LectureLogin({Key? key}) : super(key: key);

  @override
  State<LectureLogin> createState() => _LectureLoginState();
}

class _LectureLoginState extends State<LectureLogin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBarcommon(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Center(child: AppLargeText2(text: "LOGIN")),
            SizedBox(height: 20.0),
            TextBox(labelText: "Email", width: 390, height: 40),
            SizedBox(height: 20.0),
            TextBox(labelText: "Password", width: 390, height: 40),
            SizedBox(height: 20.0),
            Buttons(text: "LOGIN", onPressed: () {  },
            ),
            
            Row(
                children: [
                  SizedBox(width: 95.0),
                  BottomText2(text: "Forgot Password ?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LecturepasswordReset1(),
                      ),
                    ),
                    child: const Text(
                      'RESET',
                      style: TextStyle(
                        color: Color(0xFF500512),
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],

             ),
            
            SizedBox(height: 20.0),
            GButton(onPressed: () { 
              
             },),
             SizedBox(height: 70.0),
             Row(
                children: [
                  SizedBox(width: 67.0),
                  BottomText2(text: "Don't have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LecturerSignUp(),
                      ),
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Color(0xFF500512),
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],

             ),
            
        
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }
}
