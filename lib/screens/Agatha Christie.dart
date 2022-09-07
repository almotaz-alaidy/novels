import 'package:classes/screens/detective.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AgathaChristie extends StatefulWidget {
  const AgathaChristie({super.key});

  @override
  State<AgathaChristie> createState() => _AgathaChristieState();
}

class _AgathaChristieState extends State<AgathaChristie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 193, 111, 111),
          Color.fromARGB(255, 131, 47, 170)
        ])),
        child: ListView(
          children: [
            AgathaInfo(
                "images/9.jpg",
                "British writer Agatha Christie is widely known for writing more than 66 mystery and crime novels, and is considered one of the most famous crime and mystery writers around the world.Christie's works were distinguished by their accuracy, as the writer woven the details of each chapter of her novels brilliantly and masterfully, which managed to attract the attention and focus of the reader, so that no one starts reading her novels and leaves them before he finishes them once,,",
                Color.fromARGB(255, 245, 245, 245),
                300),
            AgathaInfo(
                "images/10.jpg",
                "سنكلم هنا عن رواية شاهدة اثبات وهي من اشهر روايات اجاثا كرستي وهذه الجملة المفتاحية للرواية  : هل يمكن لزوجة ان تصبح شاهدة اثبات لتنسب تهمة قتل الى زوجها ؟ واذا كان هذا الزوج قد امن حياتها وانتشلها يوما من الضياع فهل يكون هذا هو رد الجميل ؟ ترى ما وراء السيدة رومين؟ومالذي دفعها لأن تتهم زوجها بقتل السيدة اميلي فرنش؟وهل السيد ليوناردو فول هو الذي قتلها حقا ام ان الاحداث ستكشف عن مفاجات اخرى؟ربما تتحول شاهدة الاثبات في لحظة واحدة لشاهدة نفي. وتسفر الاحداث عن قتيلين وليس عن قتيل واحد .نعم ربما",
                Color.fromARGB(255, 249, 248, 248),
                400),
            AgathaInfo(
                "images/11.jpg",
                "جريمة على الشاطئ رواية للكاتبة البوليسية أغاثا كريستي، طبعت للمرة الأولى عام 1934 م باللغة الإنكليزية، وتعتبر من أشهر روايات أغاثا كريستي على الإطلاق. بطلها السيد هيركيول بوارو المحقق البلجيكي الشهير الذي نقابله مرة أخرى بعد رواية مقتل اللورد إدجر حيث عمل على حل القضية بحنكته. وهنا هل سيعود مجدداً ليحل لغز جريمة قتل المواطن الأمريكي  صامويل راتشيت  وهل سيستطيع معرفة ماضي القتيل؟ وما هي علاقة المسافرين الذين ينتمون إلى جنسيات وطبقات اجتماعية مختلفة بالقتيل؟ هذا ما سنعرفه عند قراءتنا لهذه الرواية الذي تصنف من أبرع الرووايات على الأطلاق. حيث جاء الحل عبقرياً. لا يملك المرء إلا الإعجاب بالفكر المدهش لأغاثا غريستي",
                Colors.white,
                300),
            AgathaInfo(
                "images/12.jpg",
                "رواية رسالة من عالم الارواح وهذه الجملة المفتاحية للروياة كان من الممكن أن تتم الجريمه و يغلق الملف تماما و تقيد (ضد مجهول) و كانت فى طريقها إلى ان تكون ( الجريمه الكامله) و يسدل الستار نهائيا و يفلت المجرم و لكن تأتى الرساله و لكنها رسالة من نوع خاص رسالة جاءت من عالم الأموات و لكن كيف جائت الرساله و كيف كان شكلها ؟ و من تلقاها؟",
                Colors.white,
                200),
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
                label: Text("go to detective page"))
          ],
        ),
      ),
    );
  }
}

class AgathaInfo extends StatelessWidget {
  AgathaInfo(this.MyImage, this.Myinfo, this.MyFontColor, this.MyHeight);
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
