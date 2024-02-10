import 'package:flutter/material.dart';
import 'package:flutter_application_2/camerasetup.dart';
import 'package:flutter_application_2/contacts.dart';
import 'package:flutter_application_2/pay_contacts.dart';


class UnderSearch extends StatelessWidget {
  const UnderSearch({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          child: Image.asset("assets/images/image01.jpg",fit:BoxFit.fill,)
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,

          // color: Colors.amber,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         openCamera(context); 
                      },
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the second icon here
                        print('Second icon tapped!');
                      },
                      child:
                          Icon(Icons.contacts_outlined, color: Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the third icon here
                        print('Third icon tapped!');
                      },
                      child: Icon(Icons.phone_android, color: Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the fourth icon here
                        print('Fourth icon tapped!');
                      },
                      child: Icon(Icons.home_rounded, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Pay UPI"),
                    Text("  Self \nTransfer"),
                    Text("  Pay Bills"),
                    Text("Recharge"),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the first icon here
                        print('First icon tapped!');
                      },
                      child: Icon(
                        Icons.paypal_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the second icon here
                        Navigator.pushNamed(context, '/PayContacts');
                      },
                      child: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for the third icon here
                        print('Third icon tapped!');
                      },
                      child: Icon(
                        Icons.blinds_closed,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/banktransfer');
                        // Handle onTap for the fourth icon here
                        print('Fourth icon tapped!');
                      },
                      child: Icon(
                        Icons.mobile_friendly,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("    Scan QR"),
                    Text("   Pay To \nContacts"),
                    Text("   Pay Phone \n    Number"),
                    Text("Transfer\n   Bank"),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          // decoration: BoxDecoration(border: Border.all(width: 1)),
          //color: Colors.amberAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                  height: 26,
                  width: 130,
                  
                  child: Center(child: Text(" Activate Upi Lite ")),
                  decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(6)),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 26,
                  width: 205,

                  child: Center(child: Text("upi id:Gauravmalode777@gmail.com",style: TextStyle(fontSize: 11),)),
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.rectangle,
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(6)
                  ), //shape dena hai idhar..
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Contacts(),

      ],
    );
  }
}
