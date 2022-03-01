// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/custom_widget.dart';

class AboutMyself extends StatefulWidget {
  const AboutMyself({ Key? key }) : super(key: key);

  @override
  _AboutMyselfState createState() => _AboutMyselfState();
}

class _AboutMyselfState extends State<AboutMyself> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Text('About Myself'),
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),
      body: 
      Container(
        margin: EdgeInsets.all(20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: Text('Type Here',style:TextStyle(fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: TextField(
  keyboardType: TextInputType.multiline,
  maxLines: null,
  maxLength: 180,
  decoration: InputDecoration(
    counterText: ''
  ),
),
            ),
            Container(
              margin:EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(btnText: 'Cancel', onBtnPressed: (){}, LeftPadding: 25.0, bottomPadding: 10.0, rightPadding: 25.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: '000000', fontsize: 18.0),
                  Buttons(btnText: 'Save', onBtnPressed: (){}, LeftPadding: 25.0, bottomPadding: 10.0, rightPadding: 25.0, topPadding: 10.0, colorOne: '6a1140', colorTwo: '6a1140', btnTextColor: 'ffffff', fontsize: 18.0),
                  Text('4/180 Words',style: TextStyle(color:Colors.grey),)
                ],
              ),
            )

          ],
        )
      ),
    );
  }
}