import 'package:flutter/material.dart';

import '../main.dart';

class Sentimental extends StatefulWidget {
  const Sentimental({super.key});

  @override
  State<Sentimental> createState() => _SentimentalState();
}

class _SentimentalState extends State<Sentimental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Color.fromARGB(255, 151, 158, 237),
              Color.fromARGB(255, 95, 84, 160)
            ],
          ),
        ),
        child: ListView(children: [
          Sent("images/21.jpg", "احمد خالد مصطفى : ارض السافلين"),
          Sent("images/22.jpg", "احمد خالد مصطفى : انتخريستوس"),
          Sent("images/23.jpg", "منى حارس : اعنة الارواح "),
          Sent("images/24.png", "ابراهيم عباس : حوجن"),
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
        ]),
      ),
    );
  }
}

class Sent extends StatelessWidget {
  Sent(this.MyImage, this.MyText);
  String? MyImage;
  String? MyText;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
