import 'package:flutter/material.dart';
import 'package:fourthlab/second_screen.dart';
import 'package:fourthlab/third_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textAlign: TextAlign.center, "Home Page"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/wallpaper.jpg"))),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(80.0)),
              height: 250,
              width: 380,
              padding: EdgeInsets.all(50),
              child: Container(
                margin: EdgeInsets.all(0.0),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 88, 127, 194)),
                child: Text(
                  "welcome to our travel agency",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 104, 6, 6),
                      fontFamily: "italic"),
                ),
              ),
            ),
            SizedBox(
              height: 100,

            ),
            ElevatedButton.icon(style: ElevatedButton.styleFrom(minimumSize: Size(100, 70)),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    },));
                  });
                }),
                icon: Icon(Icons.airplane_ticket),
                label: Text("Go to prefrence page")),

                SizedBox(height: 40,),

                ElevatedButton.icon(style: ElevatedButton.styleFrom(minimumSize: Size(100, 70)),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ThirdPage();
                    },));
                  });
                }),
                icon: Icon(Icons.airplane_ticket),
                label: Text("Fill your information"))
          ],
        ),
      ),
    );
  }
}
