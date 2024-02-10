import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PayContacts extends StatelessWidget {
  const PayContacts({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
              height: 50,
              child: Text(
                "Enter a phone number ",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 430,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://loremflickr.com/40/30/indianflag"),
                      alignment: Alignment.centerLeft,
                    ),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 76, // Adjusted width for better alignment
                      ),
                      Text(
                        "+91",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        width: 20, // Adjusted width for better alignment
                      ),
                      Expanded(
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],

                          style: TextStyle(
                              color: Colors.white, fontSize: 30), // Text color
                          decoration: InputDecoration(
                            hintText: '0000000000',

                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 30), // Hint text color
                            border: InputBorder.none, // Remove default border
                            counterText: '',
                          ),
                          maxLength: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.person_pin_sharp,
                  size: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Container(
              height: 30,
              //color: Colors.amber,
              child: Text(
                "Recents",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
