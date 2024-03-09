import 'package:appointmentms/widgets/app_largetext.dart';
import 'package:appointmentms/widgets/appbar2.dart';
import 'package:appointmentms/widgets/apptext2.dart';
import 'package:appointmentms/widgets/bottomnavigationLogin.dart';
import 'package:appointmentms/widgets/buttons.dart';
import 'package:appointmentms/widgets/googleButton.dart';
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
            SizedBox(height: 25.0),
            Center(child: AppLargeText2(text: "LOGIN")),
            SizedBox(height: 25.0),
            TextBox(labelText: "Email", width: 390, height: 40),
            SizedBox(height: 25.0),
            TextBox(labelText: "Password", width: 390, height: 40),
            SizedBox(height: 25.0),
            Buttons(text: "LOGIN", onPressed: () {  },),
            SizedBox(height: 25.0),
            AppLargeText(text: "Or"),
            SizedBox(height: 25.0),
            GButton(onPressed: () { 
              
             },),
        
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }
}
