import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage()
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String first="Head";
  String second="Tail";

  bool a=true;
  bool img=true;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Turn the Coin"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
                a ? first : second,style: TextStyle(fontSize: 40) ,
            ),
            Container(
                padding: EdgeInsets.all(100),
                child: img ? Image(image: AssetImage("pic/head.png"))
                    : Image(image: AssetImage("pic/tail.png"))

            ),


            ElevatedButton(onPressed: (){
              TextAlignVertical.bottom;
              a=!a;
              print(a);
              img=!img;
              print(img);
              setState(() {});
            }, child: Text("Flip"))
          ],
        ),
      ),
    );
  }
}


