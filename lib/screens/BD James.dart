import 'package:flutter/material.dart';

import '../main.dart';
import 'detective.dart';

class BDJames extends StatefulWidget {
  const BDJames({super.key});

  @override
  State<BDJames> createState() => _BDJamesState();
}

class _BDJamesState extends State<BDJames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.blueAccent],
          ),
        ),
        child: ListView(
          children: [
            BDInfo(Colors.white, 300, "images/12.jpg",
                "English writer BD James, born in 1920, is best known for her series of novels featuring poet and policeman Adam Dalglish.Although she left school at the age of 16, this did not prevent her from writing a number of crime and science fiction novels, of which millions of copies were sold around the world, the most famous of which are The Killing Room, Pride, and Children of Men."),
            BDInfo(Colors.white, 200, "images/10.jpg",
                "the most famous novels : 	The Deadly Users  , Ghost Rider ,Rivers of Silence"),
            ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
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
                label: Text("go to home page")),
            ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Detective();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.arrow_back),
                label: Text("go to detective page")),
          ],
        ),
      ),
    );
  }
}

class BDInfo extends StatelessWidget {
  BDInfo(this.MyFontColor, this.MyHeight, this.MyImage, this.Myinfo);
  String? Myinfo;
  String? MyImage;
  Color? MyFontColor;
  double? MyHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyHeight,
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      child: Text(
        Myinfo!,
        style: TextStyle(
            fontSize: 20, color: MyFontColor, fontFamily: "Combo-Regular"),
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
