import 'package:classes/screens/detective.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ArthurConanDoyle extends StatefulWidget {
  const ArthurConanDoyle({super.key});

  @override
  State<ArthurConanDoyle> createState() => _ArthurConanDoyleState();
}

class _ArthurConanDoyleState extends State<ArthurConanDoyle> {
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
            ArthurInfo(Colors.white, 300, "images/9.jpg",
                "Who among us has not heard of the character of Sherlock Holmes, that intelligent detective who reaches the most minute details of your life and your day from one look in which he analyzes human movements and gestures.The character of the famous detective and his friend Doctor John Watson is nothing but the creativity of the Scottish doctor Arthur Conan Dale, who is famous for writing fantasy stories, science fiction and of course detective stories, and has 4 major novels and about 50 short stories."),
            ArthurInfo(Colors.white, 200, "images/10.jpg",
                "the most famuose novells for him : The White Company,The Lost World,The Hound of the Baskervilles,The Exploits of Brigadier Gerard,The Maracot Deep"),
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

class ArthurInfo extends StatelessWidget {
  ArthurInfo(this.MyFontColor, this.MyHeight, this.MyImage, this.Myinfo);
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
