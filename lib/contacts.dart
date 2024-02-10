import 'package:flutter/material.dart';
import 'package:flutter_application_2/bills.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          child: Text(
            "People",
            style: TextStyle(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 279,
          //color: Colors.amber,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://loremflickr.com/100/100/horse'),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://loremflickr.com/100/100/lion'),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://loremflickr.com/100/100/girl'),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage('https://loremflickr.com/100/100/beer'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 30,
                    //color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Person",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("Person"),
                        Text("Person"),
                        Text("Person"),
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/cat'),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/man'),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/boy'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.expand_more_sharp,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 30,
                    //color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Person",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("Person"),
                        Text("Person"),
                        Text("More"),
                      ],
                    )),
              ),
            ],
          ),
        ),
        Container(
            height: 40,
            width: double.infinity,
            //color: Colors.blue,
            child: Row(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                Text(
                  "Businesses",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 140,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons
                          .shopping_bag_outlined), // Replace 'Icons.explore' with your desired icon
                      SizedBox(
                          width:
                              8), // Add some space between the icon and the text
                      Text("Explore"),
                    ],
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            18.0), // Adjust the border radius as needed
                      ),
                    ),
                  ),
                )
              ],
            )),
        Container(
          height: 90,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/person'),
                    radius: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/girl'),
                    radius: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://loremflickr.com/100/100/men'),
                    radius: 40),
              ),
              //  SizedBox(width: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height:25,
         // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("  Salon",style: TextStyle(fontSize: 15),),
              Text("Shop",style: TextStyle(fontSize: 15),),
              Text("Trade",style: TextStyle(fontSize: 15),),
              Text("More",style: TextStyle(fontSize: 15),),


            ],
          ),
        ),
        SizedBox(height: 10,),
        Bills(),
      ],
    );
  }
}
