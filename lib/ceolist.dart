import 'package:flutter/material.dart';

class Ceo extends StatefulWidget {
  const Ceo({Key? key}) : super(key: key);

  @override
  State<Ceo> createState() => _CeoState();
}

class _CeoState extends State<Ceo> {

  List images = [
    "assets/images/SunderPichai.jpg",
    "assets/images/BillGates.jpg",
    "assets/images/jeffbezos.jpg",
    "assets/images/mukeshambani.jpg",
    "assets/images/TimCook.jpg",
    "assets/images/ShantanuNarayen.jpg",
    "assets/images/Daniel.jpg",
    "assets/images/haraldkrueger.jpg",
    "assets/images/michaeldell.jpg",
    "assets/images/BobSwan.jpg",
  ];

  List CEOname = [
    "Sunder Pichai",
    "Bill Getes",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayan",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan",
  ];

  List Company = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];


  List ceocolor = [
    Color(0xff174E74),
    Color(0xff98CBF6),
    Color(0xff1A4675),
    Color(0xff9BB9F5),
    Color(0xff1E3376),
    Color(0xffA9A6F3),
    Color(0xff2C2672),
    Color(0xffBA9FF0),
    Color(0xff3E1C70),
    Color(0xffB0A3F2),
  ];
  List<List> c1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: Text(
              "CEO of MNC's",
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent.shade100),
        body: Stack(
          children: [
            Container(height: double.infinity, width: double.infinity,),
            ListView.builder(
              itemCount: CEOname.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return allwiget(images[index], CEOname[index], Company[index],
                    ceocolor[index],
                    index % 2 == 0 ? Colors.white : Colors.black);

              },
            ),
          ],
        ),
      ),
    );
  }

  Widget allwiget(String images, String m1, String flex, Color cl1,
      Color TxtColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage("$images"),
        ),
        title: Text(m1, style: TextStyle(color: TxtColor),),
        subtitle: Text(flex, style: TextStyle(color: TxtColor),),
        tileColor: cl1,
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.arrow_circle_right_outlined),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
