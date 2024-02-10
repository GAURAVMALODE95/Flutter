import 'package:flutter/material.dart';
import 'package:flutter_application_2/banktransfer.dart';
import 'package:flutter_application_2/pay_contacts.dart';
import 'package:flutter_application_2/splashscreen.dart'; // Import your SplashScreen widget
import 'package:flutter_application_2/searchscreen.dart';

void main() {
  runApp(PayApp());
}

class PayApp extends StatelessWidget {
  const PayApp({Key? key}) : super(key: key); // Add `: super(key: key)` and `required`

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "search widget",
      home: SearchScreen(), 
      routes: {
        '/PayContacts': (context) => PayContacts(),
        '/banktransfer':(context) => BankTransfer(),
        '/searchscreen':(context)=> SearchScreen(),
      },
      // Set the SplashScreen as the initial route
    );
  }
}
