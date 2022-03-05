// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FormFields extends StatelessWidget {

  

  final String formtext;
  final String hintText;
  final TextEditingController? textcontroller;
  
  FormFields({required this.formtext,required this.hintText,required this.textcontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child:
            
             Column(
               
               children: [
                 Align(
                   alignment: Alignment.centerLeft,
                   child:
                   Container(
                     padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                     child: (
                       Text(formtext,
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
                     controller: textcontroller,
  decoration: InputDecoration(
    fillColor: HexColor("dbd2e9"),
    filled: true,
    border: OutlineInputBorder(),
    // labelText: 'Username',
    hintText: hintText,
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
        
      );
  }
}


class Buttons extends StatelessWidget {
  // const Buttons({ Key? key }) : super(key: key);
  final String btnText;
  final VoidCallback? onBtnPressed;
  final double LeftPadding;
  final double topPadding;
  final double rightPadding;
  final double bottomPadding;
  final String colorOne;
  final String colorTwo;
  final String btnTextColor;
  final double fontsize;

  Buttons({required this.btnText,required this.onBtnPressed,required this.LeftPadding,required this.bottomPadding,required this.rightPadding,required this.topPadding,required this.colorOne,required this.colorTwo,required this.btnTextColor,required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(onPressed: onBtnPressed,
              textColor:HexColor(btnTextColor),
              padding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              child: Container(
                child: Text(btnText,style: TextStyle(fontWeight: FontWeight.bold,fontSize:fontsize),),
                
                padding:EdgeInsets.fromLTRB(LeftPadding, topPadding, rightPadding, bottomPadding),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      colors: [
                        HexColor(colorOne),
                        HexColor(colorTwo),
                      ]
                    ),
                ),
              ),
            )
    );
  }
}

class CardData extends StatelessWidget {
  const CardData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Card(
        margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.transparent, ),
                        borderRadius: BorderRadius.circular(10),
                      ),
        child: Stack(
          
          overflow: Overflow.visible,
          children: [
            Container(
              height: 180,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child:
                    Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child:
                    Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                   Container(
                    margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child:
                    Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                   Container(
                     child:Row(
                       children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                             ),
                             SizedBox(
                    height: 3.0,
                  ),
                             Container(
                               margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                             ),
                             SizedBox(
                    height: 3.0,
                  ),
                             Container(
                               margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                             )
                           ],
                         ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                         ),
                         SizedBox(
                    height: 3.0,
                  ),
                         Container(
                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                         ),
                         SizedBox(
                    height: 3.0,
                  ),
                         Container(
                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                               child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                         ),
                            ],
                          ),
                        
                       ],
                     )
                   ),
                   SizedBox(
                     height: 3.0,
                   ),
                   Container(
                     margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                     child: Row(
                       children: [
                         Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 10.0, bottomPadding: 5.0, rightPadding: 10.0, topPadding: 5.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                         IconButton(
                           onPressed: () {}, 
                           icon: Icon(Icons.favorite),
                           color: Colors.red,
                           ),
                       ],
                     ),
                   )
                  
                  
                  
                   
                ],
              ),
                
              
            ),
            Positioned(
              right: -10,
              top:-25,
              child: Container(
                height: 70,
                width: 70,
                child:ClipRRect(
                  
                      borderRadius: BorderRadius.circular(50),
                      
                      child: Image(
                      image: AssetImage('profile1.jpg'),
                      ),
                      
                      ),
              //   decoration: BoxDecoration(
              //    color:Colors.blue,
              //   borderRadius: BorderRadius.circular(50),
              // ),
              ),
            )
          ],
        ),
        
      )
    );
  }
}

