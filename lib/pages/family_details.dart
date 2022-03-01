// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_widget.dart';

class FamilyDetails extends StatefulWidget {
  const FamilyDetails({ Key? key }) : super(key: key);

  @override
  _FamilyDetailsState createState() => _FamilyDetailsState();
}

class _FamilyDetailsState extends State<FamilyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        title:Text('Family Information'),
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                child: Text('Father’s Details',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding:EdgeInsets.all(15),
                margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border:Border.all(color:HexColor('DFA7B2'),width:1)
                                 ),
                                 child: 
                                 Column(
                                   children: [
                                     Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Name',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('Job Detail',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                                   ],
                                 ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                child: Text('Mother’s Details',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
              ),
               SizedBox(height: 20.0,),
              Container(
                padding:EdgeInsets.all(15),
                margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border:Border.all(color:HexColor('DFA7B2'),width:1)
                                 ),
                                 child: 
                                 Column(
                                   children: [
                                     Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Name',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('Job Detail',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                                   ],
                                 ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                child: Text('Sibling Details',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
              ),
               SizedBox(height: 20.0,),
              Container(
                padding:EdgeInsets.all(15),
                margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                height: 580,
                width: double.infinity,
                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border:Border.all(color:HexColor('DFA7B2'),width:1)
                                 ),
                                 child: 
                                 Column(
                                   children: [
                                     Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('No of Siblings',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('No of Elder Sister',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('No of Younger Sister',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('No of Elder Brother',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                               Text('No of Younger Brother',
                               style: TextStyle(
                               fontSize: 13,
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
                        hintText: 'Type Here...',
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
                                   ],
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
      ),
    );
  }
}