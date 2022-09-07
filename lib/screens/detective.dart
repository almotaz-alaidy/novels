import 'package:classes/main.dart';
import 'package:classes/screens/Agatha%20Christie.dart';
import 'package:classes/screens/Arthur%20Conan%20Doyle.dart';
import 'package:classes/screens/BD%20James.dart';
import 'package:flutter/material.dart';

class Detective extends StatefulWidget {
  const Detective({super.key});

  @override
  State<Detective> createState() => _DetectiveState();
}

class _DetectiveState extends State<Detective> {
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
            MyWriters("images/6.jpeg", "Agatha Christie", () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AgathaChristie();
                },
              ));
            }),
            MyWriters("images/7.jpeg", "Arthur Conan Doyle", () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ArthurConanDoyle();
                },
              ));
            }),
            MyWriters("images/8.jpeg", "BD James", () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return BDJames();
                },
              ));
            }),
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

class MyWriters extends StatelessWidget {
  MyWriters(this.MyImage, this.MyText, this.Tap);
  String? MyImage;
  String? MyText;
  Function() Tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Tap,
      child: Container(
        height: 300,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Text(
          MyText!,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 248, 248, 249),
              fontFamily: "Combo-Regular"),
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
