import 'package:appointmentms/pages/Login%20S/LoginHome.dart';
import 'package:appointmentms/pages/SignUp%20S/StudentSignUp1.dart';
import 'package:appointmentms/pages/SignUp%20S/StudentpasswordReset1.dart';
import 'package:appointmentms/widgets/appbarcommon.dart';
import 'package:appointmentms/widgets/apptext2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:appointmentms/widgets/buttons.dart';
import 'package:appointmentms/widgets/miniText.dart';
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
            Buttons(text: "Login", onPressed: () { 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginHome(), // Replace with your actual destination
                ),
              );
             },),
            
            Row(
                children: [
                  SizedBox(width: 90.0),
                  BottomText2(text: "Forgot password ?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentpasswordReset1(),
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
            
          SizedBox(height: 70.0),
             Row(
                children: [
                  SizedBox(width: 67.0),
                  BottomText2(text: "Don't have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentSignup1(),
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
