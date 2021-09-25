import 'package:flutter/material.dart';

String res = " second degree";
String res_2 ="Second-degree burns cause blistering, redness, pain and burning with dermatitis, and it can be mild or severe depending on the area of ​​the burn, and second-degree skin burns may contain blisters, which is a fluid that if ruptured can cause a severe bacterial infection, and in this case the skin may take time It takes a long time to recover and may discolor the skin after recovery, so it must be handled properly. Dr. Nivedita Dado advises in such a case that we use appropriate dressings to prevent infection of the wound, and take antibiotics that help the skin recover faster, and in this case it is preferable to consult a dermatologist or plastic surgeon to receive the appropriate treatment";
//String res_3 ="Go to my profile";

class Result extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _result();
}
class _result extends State<Result>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(
        'Result',
        style: TextStyle(color: Colors.white),
        ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.black,
        ),

      body:
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.fitWidth),
          ),
          child: Column(
              children:<Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10.0, left: 00.0),
                  child:Text(res, style: TextStyle(fontSize: 26,)),
                ),

                Container(
                  padding: EdgeInsets.only(top: 20.0, left: 15.0),
                  child:Text(res_2, style: TextStyle(fontSize: 20,)),
                ),

             ]
          ),
        )
    );
  }
}