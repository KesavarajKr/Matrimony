// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/custom_widget.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({ Key? key }) : super(key: key);

  @override
  _BasicDetailsState createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {

  DateTime? _dateTime;
  final bodytype = ["Any","Medium","Thin","Fat"];
  String? value;

  final physicalStatus = ["Normal","Disabled","Dicease Recovered","Orphan","Blind","Deaf","Mute","Adopted"];
  String? physicalstatusvalue;

  final complexion = ["Any","Medium","Fair","Very Dair"];
  String? complexionValue;

  final Heightitem = ["4ft 0in - 121cms","4ft 1in - 124cms","4ft 2in - 127cms","4ft 3in - 130cms","4ft 4in - 133cms","4ft 5in - 136cms","4ft 6in - 139cms","4ft 7in - 142cms","4ft 8in - 145cms","4ft 9in - 148cms","5ft 0in - 151cms","5ft 1in - 154cms","5ft 2in - 157cms","5ft 3in - 160cms","5ft 4in - 163cms","5ft 5in - 167cms","5ft 6in - 170cms","5ft 7in - 173cms","5ft 8in - 176cms","5ft 9in - 179cms","6ft 0in - 182cms","6ft 1in - 185cms"];
  String? heightValue;

  final maritalStatus = ["Never Married","Widowed","Widower","Waiting for Legal Divorce","Divorced","Seperated","Nikah Dropped"];
  String? maritalStatusvalue;

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Basic Details'),
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),
      body:SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.all(20),
          child:Column(
            children: [
               Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         Text('Name',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                     child: TextFormField( 
                       
                      //  controller: nameController,
                    decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'Enter Your Name',
                    enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
      ),
      
          ),
                   ),
                    Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         
                         Text('Body Type',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                   
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: value,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: bodytype.map(buildMenuItem).toList(),
                         onChanged: (value) => setState(()=>this.value = value as String?),
                         ),
                     ),
                   ),
                    Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                       child: (
                         
                         Text('Physical Status',
                         style: TextStyle(
                         fontSize: 16,
                         color:Colors.black,
                         
                         fontWeight: FontWeight.bold
                       ))),
                     )
                   ),
                   
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: physicalstatusvalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: physicalStatus.map(buildMenuItem).toList(),
                         onChanged: (physicalstatusvalue) => setState(()=>this.physicalstatusvalue = physicalstatusvalue as String?),
                         ),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Date Of Birth',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(25, 10, 0, 0),
                     child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      
                   child: ElevatedButton.icon(
                     
                     label: Text(_dateTime == null ? 'Choose Date' : _dateTime.toString()),
                     icon: Icon(Icons.date_range), 
                     
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2222)
                          ).then((date) {
                             setState(() {
                               _dateTime = date!;
                             });
                          });
                        },
      
                      ),
                     ),
                   ),
                    Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Age',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                     child: TextFormField( 
                      //  controller: textcontroller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
          fillColor: HexColor("dbd2e9"),
          filled: true,
          border: OutlineInputBorder(),
          // labelText: 'Username',
          hintText: 'Enter Your Age',
        enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
      ),
      
          ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Complexion',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: complexionValue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: complexion.map(complexionItem).toList(),
                         onChanged: (complexionValue) => setState(()=>this.complexionValue = complexionValue as String?),
                         ),
                     ),
                   ),
                    Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Height',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: heightValue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: Heightitem.map(heightDetails).toList(),
                         onChanged: (heightValue) => setState(()=>this.heightValue = heightValue as String?),
                         ),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Marital Status',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: maritalStatusvalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: maritalStatus.map(MatritalDetails).toList(),
                         onChanged: (maritalStatusvalue) => setState(()=>this.maritalStatusvalue = maritalStatusvalue as String?),
                         ),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('No Of Children',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                    Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                     child: TextFormField( 
                      //  controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'No Of Children',
                    enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
      ),
      
          ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Gender',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     child: 
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Buttons(btnText: 'Male', onBtnPressed: (){}, LeftPadding: 25.0, bottomPadding: 10.0, rightPadding: 25.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: '000000', fontsize: 16.0),
                         Buttons(btnText: 'Female', onBtnPressed: (){}, LeftPadding: 25.0, bottomPadding: 10.0, rightPadding: 25.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: '000000', fontsize: 16.0),
                       ],
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Mobile Number',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                     child: TextFormField( 
                       keyboardType: TextInputType.number,
                      //  controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'Enter Mobile Number',
                    enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
      ),
      
          ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Whatsapp Number',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                     child: TextFormField( 
                       keyboardType: TextInputType.number,
                      //  controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'Enter Whatsapp Number',
                      
                    enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
      ),
      
          ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child:
                     Container(
                   padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                   child: (
                     
                     const Text('Email',
                     style: TextStyle(
                     fontSize: 16,
                     color:Colors.black,
                     
                     fontWeight: FontWeight.bold
                   ))),
                     )
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(10, 5, 10, 30),
                     child: TextFormField( 
                      //  controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'Enter E-mail ID',
                    enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
      
        ),
         focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                       ),
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
          )
        ),
      )
      
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String bodytype) => DropdownMenuItem(
  value:bodytype,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        bodytype,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> PhysicalStatus(String physicalStatus) => DropdownMenuItem(
  value:physicalStatus,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        physicalStatus,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> complexionItem(String complexionValue) => DropdownMenuItem(
  value:complexionValue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        complexionValue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> heightDetails(String heightValue) => DropdownMenuItem(
  value:heightValue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heightValue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> MatritalDetails(String maritalStatusvalue) => DropdownMenuItem(
  value:maritalStatusvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        maritalStatusvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );