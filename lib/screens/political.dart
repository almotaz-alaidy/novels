import 'package:flutter/material.dart';

import '../main.dart';

class Political extends StatefulWidget {
  const Political({super.key});

  @override
  State<Political> createState() => _PoliticalState();
}

class _PoliticalState extends State<Political> {
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
        child: ListView(
          children: [
            PoloticalInfo("images/17.jpg", "ايمن العتوم : يسمعون حسيسها "),
            PoloticalInfo("images/18.jpg", "مصطفى خليفة :القوقعة"),
            PoloticalInfo("images/19.jpg", "هتلر : كفاحي"),
            PoloticalInfo("images/20.jpg", "جون نكسون :استجواب الرئيس"),
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

class PoloticalInfo extends StatelessWidget {
  PoloticalInfo(this.MyImage, this.MyText);
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
