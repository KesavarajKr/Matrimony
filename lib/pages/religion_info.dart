import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_widget.dart';

class ReligionInfo extends StatefulWidget {
  const ReligionInfo({ Key? key }) : super(key: key);

  @override
  _ReligionInfoState createState() => _ReligionInfoState();
}

class _ReligionInfoState extends State<ReligionInfo> {

  final ReligionDetails = ["Any","Medium","Thin","Fat"];
  String? religionvalue;

  final CasteDetails = ["Any1","Medium1","Thin1","Fat1"];
  String? castevalue;

  final SubcasteDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? subcastevalue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Text('Religion Information'),
        toolbarHeight: 100.0,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),
      body: Container(
        margin:EdgeInsets.all(20),
        child: 
        Column(
          children: [
             Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         Text('Religion',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: religionvalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: ReligionDetails.map(ReligionItem).toList(),
                         onChanged: (religionvalue) => setState(()=>this.religionvalue = religionvalue as String?),
                         ),
                     ),
                   ),
                    Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         Text('Caste',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: castevalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: CasteDetails.map(CasteItem).toList(),
                         onChanged: (castevalue) => setState(()=>this.castevalue = castevalue as String?),
                         ),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         Text('Sub Caste',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                    Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 30),
                     padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: subcastevalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: SubcasteDetails.map(CasteItem).toList(),
                         onChanged: (subcastevalue) => setState(()=>this.subcastevalue = subcastevalue as String?),
                         ),
                     ),
                   ),
                    Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Buttons(btnText: 'Cancel', onBtnPressed: (){}, LeftPadding: 45.0, bottomPadding: 10.0, rightPadding: 45.0, topPadding: 10.0, colorOne: '6d1140', colorTwo: '6d1140', btnTextColor: 'ffffff', fontsize: 16.0),
                       Buttons(btnText: 'Save', onBtnPressed: (){}, LeftPadding: 45.0, bottomPadding: 10.0, rightPadding: 45.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: 'ffffff', fontsize: 16.0),
                     ],
                   )
          ],
        ),
      ),
    );
  }
}

DropdownMenuItem<String> ReligionItem(String religionvalue) => DropdownMenuItem(
  value:religionvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        religionvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> CasteItem(String castevalue) => DropdownMenuItem(
  value:castevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        castevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> SubcasteItem(String subcastevalue) => DropdownMenuItem(
  value:subcastevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        subcastevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );