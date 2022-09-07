import 'package:flutter/material.dart';

import '../main.dart';

class Historical extends StatefulWidget {
  const Historical({super.key});

  @override
  State<Historical> createState() => _HistoricalState();
}

class _HistoricalState extends State<Historical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey,
          Color.fromARGB(255, 151, 158, 237),
          Color.fromARGB(255, 95, 84, 160)
        ])),
        child: ListView(
          children: [
            Hestoricalinfo(
                "images/13.webp",
                "name of writer : Victor Hugo .  the name of the novel : احدب نتردام",
                () => null),
            Hestoricalinfo(
                "images/14.jpg",
                "name of writer : tolstoy .  the name of the novel : الحرب والسلام ",
                () => null),
            Hestoricalinfo(
                "images/15.jpg",
                "name of writer : alesandro manzone .  the name of the novel : المخطوبين",
                () => null),
            Hestoricalinfo(
                "images/16.jpg",
                "name of writer : الف شفق  .  the name of the novel :قواعد العشق الاربعون",
                () => null),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              icon: Icon(Icons.arrow_back),
              label: Text("back to home bage"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}

class Hestoricalinfo extends StatelessWidget {
  Hestoricalinfo(this.MyImage, this.MyText, this.Tap);
  String? MyImage;
  String? MyText;
  Function() Tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Tap,
      child: Container(
        // width: 300,
        height: 350,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Text(
          MyText!,
          style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: "DancingScript-VariableFont_wght"),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              MyImage!,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
