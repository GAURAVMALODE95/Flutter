import 'package:flutter/material.dart';

class Bills extends StatelessWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: double.infinity,
          // color: Colors.amber,
          child: Text(
            "Bills And Businesses",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          height: 50,
          //  color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.send_to_mobile_outlined,
                  size: 30,
                  color: Colors.blue,
                ),
                Icon(Icons.tv, size: 30, color: Colors.blue),
                Icon(Icons.light, size: 30, color: Colors.blue),
                Icon(Icons.broadcast_on_home_outlined,
                    size: 30, color: Colors.blue),
              ],
            ),
          ),
        ),
        Container(
          height: 30,
          //color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mobiles",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Tv",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Eletricity",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Bradband",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("See all"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(
              Color.fromARGB(255, 60, 55, 55),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              Size(100, 50), // Adjust the width and height as needed
            ),
            side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Colors.blue, width: 2),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
              ),
            ),
            mouseCursor: MaterialStateProperty.all<MouseCursor>(
              SystemMouseCursors.cell, // Specify the mouse cursor type
            ),
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Container(
          // color: Colors.amber,
          height: 170,
          //color: Colors.amber,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.speed,
                        color: Colors.blue,
                      ), // Prefix icon
                      SizedBox(width: 8), // Adjust the width as needed
                      Expanded(
                        child: Text(
                          "Check your cibil score for free",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ), // Suffix icon
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("tapped");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.av_timer_outlined,
                      color: Colors.blue,
                    ), // Prefix icon
                    SizedBox(width: 8), // Adjust the width as needed
                    Expanded(
                      child: Text(
                        "see transaction history",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ), // Suffix icon
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("tapped");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.blue,
                    ), // Prefix icon
                    SizedBox(width: 8), // Adjust the width as needed
                    Expanded(
                      child: Text(
                        "check bank balance",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ), // Suffix icon
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Container(
          
          child: Image.asset("assets/images/gpay1.png"),
        )
      ],
    );
  }
}
