import 'package:flutter/material.dart';
import 'package:fourthlab/main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String country= "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Destination Page"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/travel.jpg"), fit: BoxFit.fill)),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
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
                SizedBox(
                  height: 110,
                ),
                Container(
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(textAlign: TextAlign.center,
                    "Where do u want to travel ?",
                    style: TextStyle(fontSize: 30),
                    
                  ),
                ),
                SizedBox(height: 40,),

                RadioListTile(
                  isThreeLine: true,
                  title: Text("Jordan"),
                  subtitle: Text("Amman"),
                  secondary: Icon(Icons.airline_seat_flat),
                  value: "Jordan", groupValue: country, onChanged: (value) {
                  setState(() {
                    country =value.toString();
                  });
                },),
                RadioListTile(
                 
                  isThreeLine: true,
                  title: Text("UAE"),
                  subtitle: Text("Dubai"),
                  secondary: Icon(Icons.airline_seat_flat),
                  value: "UAE", groupValue: country, onChanged: (value) {
                  setState(() {
                    country =value.toString();
                  });
                },),

                RadioListTile(
                 
                  isThreeLine: true,
                  title: Text("USA"),
                  subtitle: Text("Texas"),
                  secondary: Icon(Icons.airline_seat_flat),
                  value: "USA", groupValue: country, onChanged: (value) {
                  setState(() {
                    country =value.toString();
                  });
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
