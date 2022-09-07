import 'package:classes/screens/detective.dart';
import 'package:classes/screens/historical.dart';
import 'package:classes/screens/political.dart';
import 'package:classes/screens/sentimental.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NOVELS",
          style: TextStyle(fontFamily: "Anton-Regular", fontSize: 50),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.blueAccent],
          ),
        ),
        child: ListView(
          children: [
            MyWidget(
              () => null,
              "NOVELS CATAGORY:",
              "images/1.jpg",
            ),
            MyWidget(
              () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Detective();
                  },
                ));
              },
              "detective novels",
              "images/2.jpg",
            ),
            MyWidget(
              () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Historical();
                  },
                ));
              },
              "historical novel",
              "images/3.jpg",
            ),
            MyWidget(
              () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Political();
                  },
                ));
              },
              "political novel",
              "images/4.jpg",
            ),
            MyWidget(
              () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Sentimental();
                  },
                ));
              },
              "sentimental novel",
              "images/5.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget(
    this.Tap,
    this.MyText,
    this.MyImage,
  );
  Function() Tap;

  String? MyText;
  String? MyImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Tap,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Text(
          MyText!,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 248, 248, 249),
              fontFamily: "Anton-Regular"),
        ),
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImage!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
