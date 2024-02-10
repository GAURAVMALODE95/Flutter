import 'package:flutter/material.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 7),
            child: Container(
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/searchscreen');
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 20,
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 430),
                    child: Icon(Icons.more_vert),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: Text(
              "Enter recipient details",
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 330,
            // color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13, top: 10),
                child: Container(
                  height: 50,
                  width: 460,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '  Bank account number',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13, top: 10),
                child: Container(
                  height: 50,
                  width: 460,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '  Re-enter account number',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13, top: 10),
                child: Container(
                  height: 50,
                  width: 460,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '  Ifsc code',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13, top: 10),
                child: Container(
                  height: 50,
                  width: 460,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '  Bank acc holder name',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 4,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {},
            child: Text("Confirm"),
            style: ElevatedButton.styleFrom(fixedSize:Size(400, 35),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
            
            
          ))
        ],
      ),
    );
  }
}
