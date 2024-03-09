
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Adjust the preferred height
        child: AppBar(
          backgroundColor: const Color(0xFFA1CCEB),
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                padding: const EdgeInsets.only(top: 30,left: 20),
                child: Image.asset(
                  'assets/imag.png', // Replace with your image path
                  height: 85.0,
                  width: 131.0,
                  
                  
                  
                ),
              ),
              const SizedBox(width: 210.0), // Add some spacing
              
            ],
          ),
        ),
      ),

      
    );
  }
}
