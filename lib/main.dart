import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String image = "images/science.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Slider"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                switchImage('images/science.jpg'),
                switchImage('images/Lionel-Messi-2018.jpg'),
                switchImage('images/Sushi_Roll.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector switchImage(String newImage) {
    return GestureDetector(
      onTap: () {
        setState(() {
          image = newImage;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(newImage), fit: BoxFit.fill)),
      ),
    );
  }
}
