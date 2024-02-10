import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/searchscreen.dart'; // Replace with the path to your main page file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to the main page
    Future.delayed(Duration(seconds: 1), () {
      
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SearchScreen()), // Replace PayApp with your main page widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set your desired background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 300,
            ),
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/gpaylogo.png"),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Container(
              child: Text(
                "Google",
                style: TextStyle(fontSize: 40),
              ),
            ),
          )
        ],
      ),
    );
  }
}
