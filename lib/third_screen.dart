import 'package:flutter/material.dart';
import 'package:fourthlab/main.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List numberoftickets = [
    "1 ticket",
    "2 tickets",
    "3 tickets",
    "4 tickets",
    "5 tickets",
    "6 tickets"
  ];
  String selecteditem = "1 ticket";

  String travelclass = "";

  bool Hotel1 = false;
  bool Hotel2 = false;
  bool Hotel3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Information tab"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/travel3.jpg"))),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 250,
                    child: Text(
                      "Please specify the number of tickets",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  DropdownButton(
                    dropdownColor: Colors.red,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    value: selecteditem,
                    items: numberoftickets
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text("$e")))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selecteditem = value.toString();
                      });
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 80,
                    width: 250,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Please select your class",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  RadioListTile(
                    isThreeLine: true,
                    title: Text("Economy"),
                    subtitle: Text("1000\$"),
                    secondary: Icon(Icons.airline_seat_flat),
                    value: "Economy",
                    groupValue: travelclass,
                    onChanged: (value) {
                      setState(() {
                        travelclass = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    isThreeLine: true,
                    title: Text("Bussines"),
                    subtitle: Text("10000\$"),
                    secondary: Icon(Icons.airline_seat_flat),
                    value: "Bussines",
                    groupValue: travelclass,
                    onChanged: (value) {
                      setState(() {
                        travelclass = value.toString();
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    height: 80,
                    width: 250,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Please select your hotel",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  CheckboxListTile(
                     
                      title: Text("Rotana Hotel".toUpperCase()),
                      subtitle: Text(
                        "1000000\$",
                        style: TextStyle(fontSize: 30),
                      ),
                      isThreeLine: true,
                      checkColor: Colors.amber,
                      value: Hotel1,
                      onChanged: (value) {
                        setState(() {
                          Hotel1 = value!;
                        });
                      }),

                       CheckboxListTile(
                     
                      title: Text("movenpick Hotel".toUpperCase()),
                      subtitle: Text(
                        "10000000\$",
                        style: TextStyle(fontSize: 30),
                      ),
                      isThreeLine: true,
                      checkColor: Colors.amber,
                      value: Hotel2,
                      onChanged: (value) {
                        setState(() {
                          Hotel2 = value!;
                        });
                      }),

                       CheckboxListTile(
                     
                      title: Text("Ritz carlton Hotel".toUpperCase()),
                      subtitle: Text(
                        "100000000\$",
                        style: TextStyle(fontSize: 30),
                      ),
                      isThreeLine: true,
                      checkColor: Colors.amber,
                      value: Hotel3,
                      onChanged: (value) {
                        setState(() {
                          Hotel3 = value!;
                        });
                      }),

                       ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                        padding: EdgeInsets.all(20),
                        minimumSize: Size(100, 70)),
                    onPressed: (() {
                      setState(() {
                        Navigator.pop(context, MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ));
                      });
                    }),
                    icon: Icon(Icons.airplane_ticket),
                    label: Text("Return to home page")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
